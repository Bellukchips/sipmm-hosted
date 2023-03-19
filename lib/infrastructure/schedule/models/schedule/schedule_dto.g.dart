// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleDto _$$_ScheduleDtoFromJson(Map<String, dynamic> json) =>
    _$_ScheduleDto(
      teacher_name: json['teacher_name'] as String?,
      course_name: json['course_name'] as String?,
      class_name: json['class_name'] as String?,
      class_id: json['class_id'] as int?,
      day: json['day'] as String?,
      times: json['times'] as String?,
      id_schedules: json['id_schedules'] as int?,
      categorie_name: json['categorie_name'] as String?,
    );

Map<String, dynamic> _$$_ScheduleDtoToJson(_$_ScheduleDto instance) =>
    <String, dynamic>{
      'teacher_name': instance.teacher_name,
      'course_name': instance.course_name,
      'class_name': instance.class_name,
      'class_id': instance.class_id,
      'day': instance.day,
      'times': instance.times,
      'id_schedules': instance.id_schedules,
      'categorie_name': instance.categorie_name,
    };
