import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_method.freezed.dart';

@freezed
abstract class PaymentMethod with _$PaymentMethod {
  const PaymentMethod._();
  const factory PaymentMethod(
      {required int? id,
      required String? paymentName,
      required String? total,
      required String? method,
      required String? mediaPayment,
      required String? paymentNumber}) = _PaymentMethod;

  factory PaymentMethod.empty() => const PaymentMethod(
      id: 0,
      paymentName: '',
      total: '',
      method: '',
      mediaPayment: '',
      paymentNumber: '');
}
