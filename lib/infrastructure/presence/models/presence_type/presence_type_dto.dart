import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/presence/presence_type.dart';
part 'presence_type_dto.freezed.dart';
part 'presence_type_dto.g.dart';

@freezed
class PresenceTypeDto with _$PresenceTypeDto {
  const PresenceTypeDto._();

  const factory PresenceTypeDto({int? id, String? name, String? categories}) =
      _PresenceTypeDto;

  PresenceType toDomain() {
    return PresenceType(id: id, name: name, categories: categories);
  }

  factory PresenceTypeDto.fromDomain(PresenceType type) {
    return PresenceTypeDto(
        categories: type.categories, id: type.id, name: type.name);
  }
  factory PresenceTypeDto.fromJson(Map<String, dynamic> json) =>
      _$PresenceTypeDtoFromJson(json);
}
