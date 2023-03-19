part of 'memorize_assessment_bloc.dart';

@freezed
class MemorizeAssessmentEvent with _$MemorizeAssessmentEvent {
  const factory MemorizeAssessmentEvent.started() = _Started;
  const factory MemorizeAssessmentEvent.watchAssessment(String surah) = _WatchAssessment;
  const factory MemorizeAssessmentEvent.notReceived(Either<AssessmentFailure,List<Memorize>> failureOrMemo) = _NotReceived;
}