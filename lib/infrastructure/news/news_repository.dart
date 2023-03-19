import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/news_failure/news_failure.dart';
import 'package:sipmm/domain/news/i_news_repository.dart';
import 'package:sipmm/domain/news/news.dart';
import 'package:sipmm/infrastructure/news/models/news_dto.dart';

@LazySingleton(as: INewsRepository)
class NewsRepository implements INewsRepository {
  final Dio _network;

  NewsRepository(this._network);
  @override
  Future<Either<NewsFailure, Unit>> readNews({required int id}) async {
    await Future.delayed(const Duration(seconds: 1));

    try {
      var news = await _network.post('/app/news/$id/read');
      if (news.statusCode == 200) {
        return right(unit);
      }
      return left(const NewsFailure.unexpected());
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const NewsFailure.serverError());
      } else if (status == '401') {
        return left(const NewsFailure.unauthenticated());
      } else {
        return left(NewsFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<NewsFailure, List<News>>> getLatestNews() async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final news = await _network.get('/app/news');
      if (news.statusCode == 200) {
        var result = news.data['data']['new'];
        if (result is List) {
          List<News> listNews = result
              .map((news) => NewsDto.fromJson(news).toDomain())
              .whereType<News>()
              .toList();
          return right(listNews);
        } else {
          return left(const NewsFailure.unexpected('Invalid data format'));
        }
      }
      if (news.statusCode == 401) {
        return left(const NewsFailure.unauthenticated());
      }
      return left(const NewsFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();
      debugPrint('Status $status');
      if (status == '500') {
        return left(const NewsFailure.serverError());
      } else if (status == '401') {
        return left(const NewsFailure.unauthenticated());
      } else {
        return left(NewsFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<NewsFailure, List<News>>> getOldNews() async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      var news = await _network.get('/app/news');
      if (news.statusCode == 200) {
        var result = news.data['data']['old'];
        if (result is List) {
          List<News> listNews = result
              .map((news) => NewsDto.fromJson(news).toDomain())
              .whereType<News>()
              .toList();
          return right(listNews);
        } else {
          return left(const NewsFailure.unexpected('Invalid data format'));
        }
      }
      if (news.statusCode == 401) {
        return left(const NewsFailure.unauthenticated());
      }
      return left(const NewsFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const NewsFailure.serverError());
      } else if (status == '401') {
        return left(const NewsFailure.unauthenticated());
      } else {
        return left(NewsFailure.unexpected(e.message));
      }
    }
  }
}
