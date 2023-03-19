import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule_failure.freezed.dart';

@freezed
abstract class ScheduleFailure with _$ScheduleFailure {
  const factory ScheduleFailure.unexpected([String? error]) = _Unexpected;
  const factory ScheduleFailure.serverError() = _ServerError;
  const factory ScheduleFailure.unauthenticated() = _Unauthenticated;
}
