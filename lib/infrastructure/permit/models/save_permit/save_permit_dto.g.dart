// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_permit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavePermitDto _$$_SavePermitDtoFromJson(Map<String, dynamic> json) =>
    _$_SavePermitDto(
      student_id: json['student_id'] as int?,
      description: json['description'] as String?,
      permit_date: json['permit_date'] as String?,
      permit_type: json['permit_type'] as String?,
      id_program: json['id_program'] as int?,
    );

Map<String, dynamic> _$$_SavePermitDtoToJson(_$_SavePermitDto instance) =>
    <String, dynamic>{
      'student_id': instance.student_id,
      'description': instance.description,
      'permit_date': instance.permit_date,
      'permit_type': instance.permit_type,
      'id_program': instance.id_program,
    };
