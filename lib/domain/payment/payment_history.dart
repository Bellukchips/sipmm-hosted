import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_history.freezed.dart';

@freezed
abstract class PaymentHistory with _$PaymentHistory {
  const PaymentHistory._();
  const factory PaymentHistory(
      {required int? id,
      required String? name,
      required String? payment_name,
      required String? media_payment,
      required String? method,
      required String? photo,
      required String? date,
      required String? total,
      required String? total_payment,
      required int? status}) = _PaymentHistory;
  factory PaymentHistory.empty() => const PaymentHistory(
      id: 0,
      name: '',
      payment_name: '',
      media_payment: '',
      method: '',
      photo: '',
      date: '',
      total: '',
      total_payment: '',
      status: 0);
}
