import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/schedule/schedule.dart';
part 'schedule_dto.freezed.dart';
part 'schedule_dto.g.dart';

@freezed
class ScheduleDto with _$ScheduleDto {
  const ScheduleDto._();
  const factory ScheduleDto(
      {String? teacher_name,
      String? course_name,
      String? class_name,
      int? class_id,
      String? day,
      String? times,
      int? id_schedules,
      String? categorie_name}) = _ScheduleDto;

  Schedule toDomain() {
    return Schedule(
        teacherName: teacher_name,
        courseName: course_name,
        className: class_name,
        classId: class_id,
        day: day,
        times: times,
        idSchedule: id_schedules,
        categorieName: categorie_name);
  }

  factory ScheduleDto.fromDomain(Schedule schedule) {
    return ScheduleDto(
        categorie_name: schedule.categorieName,
        class_id: schedule.classId,
        class_name: schedule.className,
        course_name: schedule.courseName,
        day: schedule.day,
        id_schedules: schedule.idSchedule,
        teacher_name: schedule.teacherName,
        times: schedule.times);
  }

  factory ScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDtoFromJson(json);
}
