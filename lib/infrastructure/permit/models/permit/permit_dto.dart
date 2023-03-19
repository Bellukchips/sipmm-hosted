import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/permit/permit.dart';
part 'permit_dto.freezed.dart';
part 'permit_dto.g.dart';

@freezed
class PermitDto with _$PermitDto {
  const PermitDto._();

  factory PermitDto(
      {int? id,
      int? student_id,
      String? description,
      String? permit_type,
      String? permit_date,
      int? id_program,
      int? status}) = _PermitDto;
  Permit toDomain() {
    return Permit(
        id: id,
        description: description,
        id_program: id_program,
        permit_date: permit_date,
        permit_type: permit_type,
        status: status,
        student_id: student_id);
  }

  factory PermitDto.fromDomain(Permit permit) {
    return PermitDto(
        id: permit.id,
        description: permit.description,
        id_program: permit.id_program,
        permit_date: permit.permit_date,
        permit_type: permit.permit_type,
        status: permit.status,
        student_id: permit.student_id);
  }

  factory PermitDto.empty() => PermitDto(
      description: '',
      id: 0,
      id_program: 0,
      permit_date: '',
      permit_type: '',
      status: 0,
      student_id: 0);
  factory PermitDto.fromJson(Map<String, dynamic> json) =>
      _$PermitDtoFromJson(json);
}
