import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/core/value/general/currency_rupiah_value_object.dart';
import 'package:sipmm/domain/core/value/general/date_value_object.dart';
import 'package:sipmm/domain/core/value/general/number_value_object.dart';
part 'payment_form.freezed.dart';

@freezed
abstract class PaymentForm with _$PaymentForm {
  const PaymentForm._();
  const factory PaymentForm({
    required NumberValue? type,
    required DateValue? date_payment,
    required CurrencyRupiahValue? total,
  }) = _PaymentForm;

  factory PaymentForm.empty() => PaymentForm(
      type: NumberValue(0),
      date_payment: DateValue(''),
      total: CurrencyRupiahValue(''));
}
