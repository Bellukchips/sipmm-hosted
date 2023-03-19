import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/payment/category_payment.dart';
part 'category_payment_dto.freezed.dart';
part 'category_payment_dto.g.dart';

@freezed
class CategoryPaymentDto with _$CategoryPaymentDto {
  const CategoryPaymentDto._();
  const factory CategoryPaymentDto(
      {
      int? id_category,
      String? payment_name,
      String? media_payment,
      String? method,
      String? total,
      int? status,
      int? sum_total,
      int? diff}) = _CategoryPaymentDto;

  CategoryPayment toDomain() {
    return CategoryPayment(
        diff: diff ?? 0,
        id_category: id_category,
        media_payment: media_payment,
        method: method,
        payment_name: payment_name,
        status: status,
        sum_total: sum_total ?? 0,
        total: total);
  }

  factory CategoryPaymentDto.fromDomain(CategoryPayment p) {
    return CategoryPaymentDto(
        diff: p.diff,
        id_category: p.id_category,
        media_payment: p.media_payment,
        method: p.method,
        payment_name: p.payment_name,
        status: p.status,
        sum_total: p.sum_total,
        total: p.total);
  }

  factory CategoryPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryPaymentDtoFromJson(json);
}
