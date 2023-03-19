import 'package:freezed_annotation/freezed_annotation.dart';
part 'assessment_failure.freezed.dart';

@freezed
abstract class AssessmentFailure with _$AssessmentFailure {
  const factory AssessmentFailure.unexpected([String? error]) = _Unexpected;
  const factory AssessmentFailure.serverError() = _ServerError;
  const factory AssessmentFailure.unauthenticated() = _Unauthenticated;
}
