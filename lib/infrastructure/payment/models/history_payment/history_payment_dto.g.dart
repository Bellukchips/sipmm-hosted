// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoryPaymentDto _$$_HistoryPaymentDtoFromJson(Map<String, dynamic> json) =>
    _$_HistoryPaymentDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      payment_name: json['payment_name'] as String?,
      media_payment: json['media_payment'] as String?,
      method: json['method'] as String?,
      photo: json['photo'] as String?,
      date: json['date'] as String?,
      total: json['total'] as String?,
      total_payment: json['total_payment'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_HistoryPaymentDtoToJson(
        _$_HistoryPaymentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'payment_name': instance.payment_name,
      'media_payment': instance.media_payment,
      'method': instance.method,
      'photo': instance.photo,
      'date': instance.date,
      'total': instance.total,
      'total_payment': instance.total_payment,
      'status': instance.status,
    };
