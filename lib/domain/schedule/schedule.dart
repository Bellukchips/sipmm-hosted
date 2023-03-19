import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule.freezed.dart';

@freezed
abstract class Schedule with _$Schedule {
  const Schedule._();
  const factory Schedule(
      {required String? teacherName,
      required String? courseName,
      required String? className,
      required int? classId,
      required String? day,
      required String? times,
      required int? idSchedule,
      required String? categorieName}) = _Schedule;
  factory Schedule.empty() => const Schedule(
      categorieName: '',
      classId: 0,
      className: '',
      courseName: '',
      day: '',
      idSchedule: 0,
      teacherName: '',
      times: '');
}
