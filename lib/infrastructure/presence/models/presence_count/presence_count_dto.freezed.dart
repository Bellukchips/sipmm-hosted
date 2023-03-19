// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presence_count_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PresenceCountDto _$PresenceCountDtoFromJson(Map<String, dynamic> json) {
  return _PresenceCountDto.fromJson(json);
}

/// @nodoc
mixin _$PresenceCountDto {
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresenceCountDtoCopyWith<PresenceCountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresenceCountDtoCopyWith<$Res> {
  factory $PresenceCountDtoCopyWith(
          PresenceCountDto value, $Res Function(PresenceCountDto) then) =
      _$PresenceCountDtoCopyWithImpl<$Res, PresenceCountDto>;
  @useResult
  $Res call({int? total});
}

/// @nodoc
class _$PresenceCountDtoCopyWithImpl<$Res, $Val extends PresenceCountDto>
    implements $PresenceCountDtoCopyWith<$Res> {
  _$PresenceCountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PresenceCountDtoCopyWith<$Res>
    implements $PresenceCountDtoCopyWith<$Res> {
  factory _$$_PresenceCountDtoCopyWith(
          _$_PresenceCountDto value, $Res Function(_$_PresenceCountDto) then) =
      __$$_PresenceCountDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total});
}

/// @nodoc
class __$$_PresenceCountDtoCopyWithImpl<$Res>
    extends _$PresenceCountDtoCopyWithImpl<$Res, _$_PresenceCountDto>
    implements _$$_PresenceCountDtoCopyWith<$Res> {
  __$$_PresenceCountDtoCopyWithImpl(
      _$_PresenceCountDto _value, $Res Function(_$_PresenceCountDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_$_PresenceCountDto(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PresenceCountDto extends _PresenceCountDto {
  const _$_PresenceCountDto({this.total}) : super._();

  factory _$_PresenceCountDto.fromJson(Map<String, dynamic> json) =>
      _$$_PresenceCountDtoFromJson(json);

  @override
  final int? total;

  @override
  String toString() {
    return 'PresenceCountDto(total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresenceCountDto &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PresenceCountDtoCopyWith<_$_PresenceCountDto> get copyWith =>
      __$$_PresenceCountDtoCopyWithImpl<_$_PresenceCountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresenceCountDtoToJson(
      this,
    );
  }
}

abstract class _PresenceCountDto extends PresenceCountDto {
  const factory _PresenceCountDto({final int? total}) = _$_PresenceCountDto;
  const _PresenceCountDto._() : super._();

  factory _PresenceCountDto.fromJson(Map<String, dynamic> json) =
      _$_PresenceCountDto.fromJson;

  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_PresenceCountDtoCopyWith<_$_PresenceCountDto> get copyWith =>
      throw _privateConstructorUsedError;
}
