import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/assessment/memorize.dart';
import 'package:sipmm/domain/assessment/surah.dart';
import 'package:sipmm/domain/core/failure/assessment_failure/assessment_failure.dart';

abstract class IAssessmentRepository {
  Future<Either<AssessmentFailure, List<Memorize>>> getMemorizeScore(
      String surah);
  Future<Either<AssessmentFailure, List<Surah>>> getSurah();
}
