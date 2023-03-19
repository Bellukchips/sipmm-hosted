import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  factory UserDto(
      {int? id,
      String? noId,
      String? email,
      String? name,
      String? photo,
      String? gender,
      String? date_birth,
      int? is_activate}) = _UserDto;

  factory UserDto.empty() => UserDto(
      id: 0,
      email: '',
      noId: '',
      photo: '',
      name: '',
      gender: '',
      date_birth: '',
      is_activate: 0);

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
