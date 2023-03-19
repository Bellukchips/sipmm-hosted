// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presence_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PresenceDto _$$_PresenceDtoFromJson(Map<String, dynamic> json) =>
    _$_PresenceDto(
      id: json['id'] as int?,
      name_operator: json['name_operator'] as String?,
      student_name: json['student_name'] as String?,
      type: json['type'] as String?,
      category: json['category'] as String?,
      other_category: json['other_category'] as String?,
      status: json['status'] as String?,
      date_presence: json['date_presence'] as String?,
    );

Map<String, dynamic> _$$_PresenceDtoToJson(_$_PresenceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_operator': instance.name_operator,
      'student_name': instance.student_name,
      'type': instance.type,
      'category': instance.category,
      'other_category': instance.other_category,
      'status': instance.status,
      'date_presence': instance.date_presence,
    };
