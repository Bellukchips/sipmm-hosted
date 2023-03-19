// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PermitDto _$$_PermitDtoFromJson(Map<String, dynamic> json) => _$_PermitDto(
      id: json['id'] as int?,
      student_id: json['student_id'] as int?,
      description: json['description'] as String?,
      permit_type: json['permit_type'] as String?,
      permit_date: json['permit_date'] as String?,
      id_program: json['id_program'] as int?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_PermitDtoToJson(_$_PermitDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.student_id,
      'description': instance.description,
      'permit_type': instance.permit_type,
      'permit_date': instance.permit_date,
      'id_program': instance.id_program,
      'status': instance.status,
    };
