part of 'schedule_watcher_bloc.dart';

@freezed
class ScheduleWatcherEvent with _$ScheduleWatcherEvent {
  const factory ScheduleWatcherEvent.watchSchedule(
      String category, String day) = _WatchSchedule;
  const factory ScheduleWatcherEvent.notReceivedSchedule(
          Either<ScheduleFailure, List<Schedule>> failureOrSchedule) =
      _NotReceivedSchhedule;
}
