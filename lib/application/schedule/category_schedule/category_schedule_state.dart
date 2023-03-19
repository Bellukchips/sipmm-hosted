part of 'category_schedule_bloc.dart';

@freezed
class CategoryScheduleState with _$CategoryScheduleState {
  const factory CategoryScheduleState.initial() = _Initial;
  const factory CategoryScheduleState.loadInProgress() = _LoadInProgress;
  const factory CategoryScheduleState.loadCategory(
      List<CategorySchedule> category) = _LoadSchedule;
  const factory CategoryScheduleState.loadFailure(ScheduleFailure failure) =
      _LoadFailure;
  const factory CategoryScheduleState.loadEmpty() = _LoadEmpty;
}
