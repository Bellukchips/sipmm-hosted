import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/payment/payment_history.dart';

part 'history_payment_dto.freezed.dart';
part 'history_payment_dto.g.dart';

@freezed
class HistoryPaymentDto with _$HistoryPaymentDto {
  const HistoryPaymentDto._();

  const factory HistoryPaymentDto(
      {int? id,
      String? name,
      String? payment_name,
      String? media_payment,
      String? method,
      String? photo,
      String? date,
      String? total,
      String? total_payment,
      int? status}) = _HistoryPaymentDto;

  PaymentHistory toDomain() {
    return PaymentHistory(
        id: id,
        name: name,
        payment_name: payment_name,
        media_payment: media_payment,
        method: method,
        photo: photo,
        date: date,
        total: total,
        total_payment: total_payment,
        status: status);
  }

  factory HistoryPaymentDto.fromDomain(PaymentHistory p) {
    return HistoryPaymentDto(
        date: p.date,
        id: p.id,
        media_payment: p.media_payment,
        method: p.method,
        name: p.name,
        payment_name: p.payment_name,
        photo: p.photo,
        status: p.status,
        total: p.total,
        total_payment: p.total_payment);
  }
  factory HistoryPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$HistoryPaymentDtoFromJson(json);
}
