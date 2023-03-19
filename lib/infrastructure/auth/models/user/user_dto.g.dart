// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as int?,
      noId: json['noId'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      gender: json['gender'] as String?,
      date_birth: json['date_birth'] as String?,
      is_activate: json['is_activate'] as int?,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'noId': instance.noId,
      'email': instance.email,
      'name': instance.name,
      'photo': instance.photo,
      'gender': instance.gender,
      'date_birth': instance.date_birth,
      'is_activate': instance.is_activate,
    };
