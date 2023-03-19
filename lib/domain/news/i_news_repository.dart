import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/news_failure/news_failure.dart';
import 'package:sipmm/domain/news/news.dart';

abstract class INewsRepository {
  Future<Either<NewsFailure, List<News>>> getLatestNews();
  Future<Either<NewsFailure, List<News>>> getOldNews();
  Future<Either<NewsFailure, Unit>> readNews({required int id});
}
