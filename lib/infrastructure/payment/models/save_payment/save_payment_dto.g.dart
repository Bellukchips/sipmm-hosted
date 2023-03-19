// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavePaymentDto _$$_SavePaymentDtoFromJson(Map<String, dynamic> json) =>
    _$_SavePaymentDto(
      id: json['id'] as int?,
      id_user: json['id_user'] as int?,
      id_student: json['id_student'] as int?,
      id_payment: json['id_payment'] as int?,
      date_payment: json['date_payment'] as String?,
      total: json['total'] as String?,
    );

Map<String, dynamic> _$$_SavePaymentDtoToJson(_$_SavePaymentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_user': instance.id_user,
      'id_student': instance.id_student,
      'id_payment': instance.id_payment,
      'date_payment': instance.date_payment,
      'total': instance.total,
    };
