import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/presence/history_presence.dart';
part 'presence_dto.freezed.dart';
part 'presence_dto.g.dart';

@freezed
class PresenceDto with _$PresenceDto {
  const PresenceDto._();

  const factory PresenceDto(
      {int? id,
      String? name_operator,
      String? student_name,
      String? type,
      String? category,
      String? other_category,
      String? status,
      String? date_presence}) = _PresenceDto;

  PresenceHistory toDomain() => PresenceHistory(
      category: category,
      date_presence: date_presence,
      id: id,
      name_operator: name_operator,
      other_category: other_category,
      status: status,
      student_name: student_name,
      type: type);

  factory PresenceDto.fromDomain(PresenceHistory presence) {
    return PresenceDto(
        category: presence.category,
        date_presence: presence.date_presence,
        id: presence.id,
        name_operator: presence.name_operator,
        other_category: presence.other_category,
        status: presence.status,
        student_name: presence.student_name,
        type: presence.type);
  }
  factory PresenceDto.fromJson(Map<String, dynamic> json) =>
      _$PresenceDtoFromJson(json);
}
