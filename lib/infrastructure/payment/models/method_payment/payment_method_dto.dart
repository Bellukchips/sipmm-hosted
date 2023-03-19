import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/payment/payment_method.dart';
part 'payment_method_dto.freezed.dart';
part 'payment_method_dto.g.dart';

@freezed
class PaymentMethodDto with _$PaymentMethodDto {
  const PaymentMethodDto._();

  const factory PaymentMethodDto(
      {int? id,
      String? payment_name,
      String? total,
      String? method,
      String? media_payment,
      String? payment_number}) = _PaymentMethodDto;

  PaymentMethod toDomain() {
    return PaymentMethod(
        id: id,
        paymentName: payment_name,
        total: total,
        method: method,
        mediaPayment: media_payment,
        paymentNumber: payment_number);
  }

  factory PaymentMethodDto.fromDomain(PaymentMethod payment) {
    return PaymentMethodDto(
        id: payment.id,
        media_payment: payment.mediaPayment,
        method: payment.method,
        payment_name: payment.paymentName,
        payment_number: payment.paymentNumber,
        total: payment.total);
  }
  factory PaymentMethodDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDtoFromJson(json);

  factory PaymentMethodDto.empty() => const PaymentMethodDto(
      id: 0,
      payment_name: '',
      total: '',
      method: '',
      media_payment: '',
      payment_number: '');
}
