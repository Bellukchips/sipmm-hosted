import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/presence/presence_count.dart';
part 'presence_count_dto.freezed.dart';
part 'presence_count_dto.g.dart';

@freezed
class PresenceCountDto with _$PresenceCountDto {
  const PresenceCountDto._();

  const factory PresenceCountDto({int? total}) = _PresenceCountDto;

  PresenceCount toDomain() {
    return PresenceCount(total: total);
  }

  factory PresenceCountDto.fromDomain(PresenceCount presence) {
    return PresenceCountDto(total: presence.total);
  }
  factory PresenceCountDto.fromJson(Map<String, dynamic> json) =>
      _$PresenceCountDtoFromJson(json);
}
