part of 'surah_bloc.dart';

@freezed
class SurahEvent with _$SurahEvent {
  const factory SurahEvent.started() = _Started;
  const factory SurahEvent.getSurah() = _GetSurah;
  const factory SurahEvent.notReceived(Either<AssessmentFailure,List<Surah>> failureOrSurah) = _NotReceived;
}