import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/permit/permit_count.dart';
part 'permit_count_dto.freezed.dart';
part 'permit_count_dto.g.dart';

@freezed
class PermitCountDto with _$PermitCountDto {
  const PermitCountDto._();

  factory PermitCountDto({int? total}) = _PermitCountDto;

  PermitCount toDomain() {
    return PermitCount(total: total);
  }

  factory PermitCountDto.empty() => PermitCountDto(total: 0);

  factory PermitCountDto.fromDomain(PermitCount permit) {
    return PermitCountDto(total: permit.total);
  }

  factory PermitCountDto.fromJson(Map<String, dynamic> json) =>
      _$PermitCountDtoFromJson(json);
}
