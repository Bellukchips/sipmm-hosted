part of 'schedule_watcher_bloc.dart';

@freezed
class ScheduleWatcherState with _$ScheduleWatcherState {
  const factory ScheduleWatcherState.initial() = _Initial;
  const factory ScheduleWatcherState.loadInProgress() = _LoadInProgress;
  const factory ScheduleWatcherState.loadSchedule(List<Schedule> schedule) = _LoadSchedule;
  const factory ScheduleWatcherState.loadFailure(ScheduleFailure failure) = _LoadFailure;
  const factory ScheduleWatcherState.loadEmpty() = _LoadEmpty;
}
