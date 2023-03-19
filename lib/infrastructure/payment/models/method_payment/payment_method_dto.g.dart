// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethodDto _$$_PaymentMethodDtoFromJson(Map<String, dynamic> json) =>
    _$_PaymentMethodDto(
      id: json['id'] as int?,
      payment_name: json['payment_name'] as String?,
      total: json['total'] as String?,
      method: json['method'] as String?,
      media_payment: json['media_payment'] as String?,
      payment_number: json['payment_number'] as String?,
    );

Map<String, dynamic> _$$_PaymentMethodDtoToJson(_$_PaymentMethodDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payment_name': instance.payment_name,
      'total': instance.total,
      'method': instance.method,
      'media_payment': instance.media_payment,
      'payment_number': instance.payment_number,
    };
