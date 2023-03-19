// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryPaymentDto _$$_CategoryPaymentDtoFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryPaymentDto(
      id_category: json['id_category'] as int?,
      payment_name: json['payment_name'] as String?,
      media_payment: json['media_payment'] as String?,
      method: json['method'] as String?,
      total: json['total'] as String?,
      status: json['status'] as int?,
      sum_total: json['sum_total'] as int?,
      diff: json['diff'] as int?,
    );

Map<String, dynamic> _$$_CategoryPaymentDtoToJson(
        _$_CategoryPaymentDto instance) =>
    <String, dynamic>{
      'id_category': instance.id_category,
      'payment_name': instance.payment_name,
      'media_payment': instance.media_payment,
      'method': instance.method,
      'total': instance.total,
      'status': instance.status,
      'sum_total': instance.sum_total,
      'diff': instance.diff,
    };
