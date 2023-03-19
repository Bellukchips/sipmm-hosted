import 'package:freezed_annotation/freezed_annotation.dart';
part 'permit.freezed.dart';

@freezed
abstract class Permit with _$Permit {
  const Permit._();
  const factory Permit(
      {required int? id,
      required int? student_id,
      required String? description,
      required String? permit_type,
      required String? permit_date,
      required int? id_program,
      required int? status}) = _Permit;

  factory Permit.empty() => const Permit(
      description: '',
      id: 0,
      id_program: 0,
      permit_date: '',
      permit_type: '',
      status: 0,
      student_id: 0);
}
