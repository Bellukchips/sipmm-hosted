import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/core/value/general/date_value_object.dart';
import 'package:sipmm/domain/core/value/general/number_value_object.dart';
import 'package:sipmm/domain/core/value/general/single_line_text_value_object.dart';
import 'package:sipmm/domain/core/value/general/text_value_object.dart';
part 'save_permit.freezed.dart';

@freezed
abstract class SavePermit with _$SavePermit {
  const SavePermit._();
  const factory SavePermit({
    required NumberValue? student_id,
    required TextValueObject? description,
    required DateValue? permit_date,
    required SingleLineText? permit_type,
    required NumberValue? id_program,
  }) = _SavePermit;
  factory SavePermit.empty() => SavePermit(
      description: TextValueObject(''),
      id_program: NumberValue(0),
      permit_date: DateValue(''),
      permit_type: SingleLineText(''),
      student_id: NumberValue(0));
}
