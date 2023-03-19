// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginDto _$$_LoginDtoFromJson(Map<String, dynamic> json) => _$_LoginDto(
      access_token: json['access_token'] as String?,
      token_type: json['token_type'] as String?,
      user: json['user'] == null
          ? null
          : UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginDtoToJson(_$_LoginDto instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'token_type': instance.token_type,
      'user': instance.user,
    };
