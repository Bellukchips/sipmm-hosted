// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presence_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PresenceTypeDto _$PresenceTypeDtoFromJson(Map<String, dynamic> json) {
  return _PresenceTypeDto.fromJson(json);
}

/// @nodoc
mixin _$PresenceTypeDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresenceTypeDtoCopyWith<PresenceTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresenceTypeDtoCopyWith<$Res> {
  factory $PresenceTypeDtoCopyWith(
          PresenceTypeDto value, $Res Function(PresenceTypeDto) then) =
      _$PresenceTypeDtoCopyWithImpl<$Res, PresenceTypeDto>;
  @useResult
  $Res call({int? id, String? name, String? categories});
}

/// @nodoc
class _$PresenceTypeDtoCopyWithImpl<$Res, $Val extends PresenceTypeDto>
    implements $PresenceTypeDtoCopyWith<$Res> {
  _$PresenceTypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PresenceTypeDtoCopyWith<$Res>
    implements $PresenceTypeDtoCopyWith<$Res> {
  factory _$$_PresenceTypeDtoCopyWith(
          _$_PresenceTypeDto value, $Res Function(_$_PresenceTypeDto) then) =
      __$$_PresenceTypeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? categories});
}

/// @nodoc
class __$$_PresenceTypeDtoCopyWithImpl<$Res>
    extends _$PresenceTypeDtoCopyWithImpl<$Res, _$_PresenceTypeDto>
    implements _$$_PresenceTypeDtoCopyWith<$Res> {
  __$$_PresenceTypeDtoCopyWithImpl(
      _$_PresenceTypeDto _value, $Res Function(_$_PresenceTypeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$_PresenceTypeDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PresenceTypeDto extends _PresenceTypeDto {
  const _$_PresenceTypeDto({this.id, this.name, this.categories}) : super._();

  factory _$_PresenceTypeDto.fromJson(Map<String, dynamic> json) =>
      _$$_PresenceTypeDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? categories;

  @override
  String toString() {
    return 'PresenceTypeDto(id: $id, name: $name, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresenceTypeDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categories, categories) ||
                other.categories == categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, categories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PresenceTypeDtoCopyWith<_$_PresenceTypeDto> get copyWith =>
      __$$_PresenceTypeDtoCopyWithImpl<_$_PresenceTypeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresenceTypeDtoToJson(
      this,
    );
  }
}

abstract class _PresenceTypeDto extends PresenceTypeDto {
  const factory _PresenceTypeDto(
      {final int? id,
      final String? name,
      final String? categories}) = _$_PresenceTypeDto;
  const _PresenceTypeDto._() : super._();

  factory _PresenceTypeDto.fromJson(Map<String, dynamic> json) =
      _$_PresenceTypeDto.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get categories;
  @override
  @JsonKey(ignore: true)
  _$$_PresenceTypeDtoCopyWith<_$_PresenceTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
