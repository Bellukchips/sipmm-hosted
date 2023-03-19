import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/core/value/general/date_value_object.dart';
import 'package:sipmm/domain/core/value/general/number_value_object.dart';
import 'package:sipmm/domain/core/value/general/single_line_text_value_object.dart';
import 'package:sipmm/domain/core/value/general/text_value_object.dart';
import 'package:sipmm/domain/permit/save_permit.dart';
part 'save_permit_dto.freezed.dart';
part 'save_permit_dto.g.dart';

@freezed
class SavePermitDto with _$SavePermitDto {
  const SavePermitDto._();
  const factory SavePermitDto(
      {int? student_id,
      String? description,
      String? permit_date,
      String? permit_type,
      int? id_program}) = _SavePermitDto;

  SavePermit toDomain() {
    return SavePermit(
        description: TextValueObject(description!),
        id_program: NumberValue(id_program!),
        permit_date: DateValue(permit_date!),
        permit_type: SingleLineText(permit_type!),
        student_id: NumberValue(student_id!));
  }

  factory SavePermitDto.fromDomain(SavePermit permit) {
    return SavePermitDto(
        description: permit.description?.getOrCrash(),
        id_program: permit.id_program?.getOrCrash(),
        permit_date: permit.permit_date?.getOrCrash(),
        permit_type: permit.permit_type?.getOrCrash(),
        student_id: permit.student_id?.getOrCrash());
  }

  factory SavePermitDto.fromJson(Map<String, dynamic> json) =>
      _$SavePermitDtoFromJson(json);
}
