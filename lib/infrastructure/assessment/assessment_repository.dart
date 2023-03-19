import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/assessment/i_assessment_repository.dart';
import 'package:sipmm/domain/assessment/surah.dart';
import 'package:sipmm/domain/assessment/memorize.dart';
import 'package:sipmm/domain/core/failure/assessment_failure/assessment_failure.dart';
import 'package:sipmm/infrastructure/assessment/models/memorize/memorize_dto.dart';
import 'package:http/http.dart' as http;
import 'package:sipmm/infrastructure/assessment/models/surah/surah_dto.dart';

@LazySingleton(as: IAssessmentRepository)
class AssessmentRepository implements IAssessmentRepository {
  final Dio _network;

  AssessmentRepository(this._network);
  @override
  Future<Either<AssessmentFailure, List<Memorize>>> getMemorizeScore(
      String surah) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      var response = await _network
          .get('/app/assessment/memorize', queryParameters: {"surah": surah});
      if (response.statusCode == 200) {
        var result = response.data['data'];
        if (result is List) {
          List<Memorize> list = result
              .map((memo) => MemorizeDto.fromJson(memo).toDomain())
              .whereType<Memorize>()
              .toList();
          return right(list);
        } else {
          return left(
              const AssessmentFailure.unexpected('Invalid data format'));
        }
      }
      if (response.statusCode == 401) {
        return left(const AssessmentFailure.unauthenticated());
      }
      return left(const AssessmentFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const AssessmentFailure.serverError());
      } else if (status == '401') {
        return left(const AssessmentFailure.unauthenticated());
      } else {
        return left(AssessmentFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<AssessmentFailure, List<Surah>>> getSurah() async {
    await Future.delayed(const Duration(seconds: 1));
    var client = http.Client();

    try {
      var response = await client.get(Uri.parse("https://equran.id/api/surat"));

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        if (result is List) {
          List<Surah> list = result
              .map((memo) => SurahDto.fromJson(memo).toDomain())
              .whereType<Surah>()
              .toList();
          return right(list);
        } else {
          return left(
              const AssessmentFailure.unexpected('Invalid data format'));
        }
      }
      if (response.statusCode == 401) {
        return left(const AssessmentFailure.unauthenticated());
      }
      if (response.statusCode == 500) {
        return left(const AssessmentFailure.serverError());
      } else if (response.statusCode == 401) {
        return left(const AssessmentFailure.unauthenticated());
      }
      return left(const AssessmentFailure.unexpected('Opps Error'));
    } catch (e) {
      return left(const AssessmentFailure.unexpected('Opps Error'));
    } finally {
      client.close();
    }
  }
}
