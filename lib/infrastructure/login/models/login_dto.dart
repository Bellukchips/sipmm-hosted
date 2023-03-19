import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/infrastructure/auth/models/user/user_dto.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  factory LoginDto({
    String? access_token,
    String? token_type,
    UserDto? user,
  }) = _LoginDto;

  factory LoginDto.empty() =>
      LoginDto(access_token: '', token_type: '', user: UserDto());

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);
}
