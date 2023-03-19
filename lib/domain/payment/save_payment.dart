import 'package:freezed_annotation/freezed_annotation.dart';
part 'save_payment.freezed.dart';

@freezed
abstract class SavePayment with _$SavePayment {
  const SavePayment._();
  const factory SavePayment({
    required int? id,
    required int? id_user,
    required int? id_student,
    required int? id_payment,
    required String? date_payment,
    required String? total,
  }) = _SavePayment;
  factory SavePayment.empty() => const SavePayment(
      id_user: 0, id_student: 0, id_payment: 0, date_payment: '', total: '',id: 0);
}
