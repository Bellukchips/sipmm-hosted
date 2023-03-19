part of 'memorize_assessment_bloc.dart';

@freezed
class MemorizeAssessmentState with _$MemorizeAssessmentState {
  const factory MemorizeAssessmentState.initial() = _Initial;
  const factory MemorizeAssessmentState.loadInProgress() = _LoadInProgress;
  const factory MemorizeAssessmentState.loadSuccess(List<Memorize> memo) = _LoadSuccess;
  const factory MemorizeAssessmentState.loadEmpty() = _LoadEmpty;
  const factory MemorizeAssessmentState.loadFailure(AssessmentFailure failure) = _LoadFailure;
}
