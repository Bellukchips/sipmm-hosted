import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_payment.freezed.dart';

@freezed
abstract class CategoryPayment with _$CategoryPayment {
  const CategoryPayment._();
  const factory CategoryPayment(
      {
      int? id_category,
      String? payment_name,
      String? media_payment,
      String? method,
      String? total,
      int? status,
      int? sum_total,
      int? diff}) = _CategoryPayment;

  factory CategoryPayment.empty() => const CategoryPayment(
      diff: 0,
      media_payment: '',
      method: '',
      payment_name: '',
      status: 0,
      id_category: 0,
      sum_total: 0,
      total: '');
}
