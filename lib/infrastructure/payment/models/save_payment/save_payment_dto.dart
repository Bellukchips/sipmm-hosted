import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/payment/save_payment.dart';
part 'save_payment_dto.freezed.dart';
part 'save_payment_dto.g.dart';

@freezed
class SavePaymentDto with _$SavePaymentDto {
  const SavePaymentDto._();
  const factory SavePaymentDto(
      {int? id,
      int? id_user,
      int? id_student,
      int? id_payment,
      String? date_payment,
      String? total}) = _SavePaymentDto;
  SavePayment toDomain() {
    return SavePayment(
        id: id,
        id_user: id_user,
        id_student: id_student,
        id_payment: id_payment,
        date_payment: date_payment,
        total: total);
  }

  factory SavePaymentDto.fromDomain(SavePayment p) {
    return SavePaymentDto(
        date_payment: p.date_payment,
        id_payment: p.id_payment,
        id_student: p.id_student,
        id_user: p.id_user,
        id: p.id,
        total: p.total);
  }

  factory SavePaymentDto.fromJson(Map<String, dynamic> json) =>
      _$SavePaymentDtoFromJson(json);
}
