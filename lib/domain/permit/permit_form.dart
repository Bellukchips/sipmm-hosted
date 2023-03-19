import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/core/value/general/date_value_object.dart';
import 'package:sipmm/domain/core/value/general/single_line_text_value_object.dart';
import 'package:sipmm/domain/core/value/general/text_value_object.dart';
part 'permit_form.freezed.dart';

@freezed
abstract class PermitForm with _$PermitForm {
  const PermitForm._();
  const factory PermitForm(
      {required SingleLineText? title,
      required TextValueObject? description,
      required DateValue? date_permit}) = _PermitForm;

  factory PermitForm.empty() => PermitForm(
      title: SingleLineText(''),
      description: TextValueObject(''),
      date_permit: DateValue(''));
}
