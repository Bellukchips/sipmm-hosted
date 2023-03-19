part of 'category_schedule_bloc.dart';

@freezed
class CategoryScheduleEvent with _$CategoryScheduleEvent {
  const factory CategoryScheduleEvent.started() = _Started;
  const factory CategoryScheduleEvent.watchCategory() = _WatchCategory;
  const factory CategoryScheduleEvent.notReceivedSchedule(
          Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule) =
      _NotReceivedSchhedule;
}
