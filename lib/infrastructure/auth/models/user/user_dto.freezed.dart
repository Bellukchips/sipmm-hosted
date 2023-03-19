// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  int? get id => throw _privateConstructorUsedError;
  String? get noId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get date_birth => throw _privateConstructorUsedError;
  int? get is_activate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {int? id,
      String? noId,
      String? email,
      String? name,
      String? photo,
      String? gender,
      String? date_birth,
      int? is_activate});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? noId = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? gender = freezed,
    Object? date_birth = freezed,
    Object? is_activate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      noId: freezed == noId
          ? _value.noId
          : noId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      date_birth: freezed == date_birth
          ? _value.date_birth
          : date_birth // ignore: cast_nullable_to_non_nullable
              as String?,
      is_activate: freezed == is_activate
          ? _value.is_activate
          : is_activate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$_UserDtoCopyWith(
          _$_UserDto value, $Res Function(_$_UserDto) then) =
      __$$_UserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? noId,
      String? email,
      String? name,
      String? photo,
      String? gender,
      String? date_birth,
      int? is_activate});
}

/// @nodoc
class __$$_UserDtoCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$_UserDto>
    implements _$$_UserDtoCopyWith<$Res> {
  __$$_UserDtoCopyWithImpl(_$_UserDto _value, $Res Function(_$_UserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? noId = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? gender = freezed,
    Object? date_birth = freezed,
    Object? is_activate = freezed,
  }) {
    return _then(_$_UserDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      noId: freezed == noId
          ? _value.noId
          : noId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      date_birth: freezed == date_birth
          ? _value.date_birth
          : date_birth // ignore: cast_nullable_to_non_nullable
              as String?,
      is_activate: freezed == is_activate
          ? _value.is_activate
          : is_activate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto implements _UserDto {
  _$_UserDto(
      {this.id,
      this.noId,
      this.email,
      this.name,
      this.photo,
      this.gender,
      this.date_birth,
      this.is_activate});

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? noId;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? photo;
  @override
  final String? gender;
  @override
  final String? date_birth;
  @override
  final int? is_activate;

  @override
  String toString() {
    return 'UserDto(id: $id, noId: $noId, email: $email, name: $name, photo: $photo, gender: $gender, date_birth: $date_birth, is_activate: $is_activate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.noId, noId) || other.noId == noId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.date_birth, date_birth) ||
                other.date_birth == date_birth) &&
            (identical(other.is_activate, is_activate) ||
                other.is_activate == is_activate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, noId, email, name, photo,
      gender, date_birth, is_activate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      __$$_UserDtoCopyWithImpl<_$_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(
      this,
    );
  }
}

abstract class _UserDto implements UserDto {
  factory _UserDto(
      {final int? id,
      final String? noId,
      final String? email,
      final String? name,
      final String? photo,
      final String? gender,
      final String? date_birth,
      final int? is_activate}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  int? get id;
  @override
  String? get noId;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get photo;
  @override
  String? get gender;
  @override
  String? get date_birth;
  @override
  int? get is_activate;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
