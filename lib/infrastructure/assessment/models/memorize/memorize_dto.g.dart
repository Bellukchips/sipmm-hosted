// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memorize_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemorizeDto _$$_MemorizeDtoFromJson(Map<String, dynamic> json) =>
    _$_MemorizeDto(
      id: json['id'] as int?,
      student_id: json['student_id'] as int?,
      verse: json['verse'] as String?,
      surah: json['surah'] as String?,
      score: json['score'] as String?,
      date_assessment: json['date_assessment'] as String?,
      tester: json['tester'] as String?,
    );

Map<String, dynamic> _$$_MemorizeDtoToJson(_$_MemorizeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.student_id,
      'verse': instance.verse,
      'surah': instance.surah,
      'score': instance.score,
      'date_assessment': instance.date_assessment,
      'tester': instance.tester,
    };
