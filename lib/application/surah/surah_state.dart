part of 'surah_bloc.dart';

@freezed
class SurahState with _$SurahState {
  const factory SurahState.initial() = _Initial;
  const factory SurahState.loadInProgress() = _LoadInProgress;
  const factory SurahState.loadSuccess(List<Surah> surah) = _LoadSuccess;
  const factory SurahState.loadFailure(AssessmentFailure failure) = _LoadFailure;
  const factory SurahState.loadEmpty() = _LoadEmpty;
}
