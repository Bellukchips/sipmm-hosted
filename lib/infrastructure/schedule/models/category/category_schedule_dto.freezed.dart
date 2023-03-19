// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryScheduleDto _$CategoryScheduleDtoFromJson(Map<String, dynamic> json) {
  return _CategoryScheduleDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryScheduleDto {
  int? get id => throw _privateConstructorUsedError;
  String? get categorie_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryScheduleDtoCopyWith<CategoryScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryScheduleDtoCopyWith<$Res> {
  factory $CategoryScheduleDtoCopyWith(
          CategoryScheduleDto value, $Res Function(CategoryScheduleDto) then) =
      _$CategoryScheduleDtoCopyWithImpl<$Res, CategoryScheduleDto>;
  @useResult
  $Res call({int? id, String? categorie_name});
}

/// @nodoc
class _$CategoryScheduleDtoCopyWithImpl<$Res, $Val extends CategoryScheduleDto>
    implements $CategoryScheduleDtoCopyWith<$Res> {
  _$CategoryScheduleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categorie_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categorie_name: freezed == categorie_name
          ? _value.categorie_name
          : categorie_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryScheduleDtoCopyWith<$Res>
    implements $CategoryScheduleDtoCopyWith<$Res> {
  factory _$$_CategoryScheduleDtoCopyWith(_$_CategoryScheduleDto value,
          $Res Function(_$_CategoryScheduleDto) then) =
      __$$_CategoryScheduleDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? categorie_name});
}

/// @nodoc
class __$$_CategoryScheduleDtoCopyWithImpl<$Res>
    extends _$CategoryScheduleDtoCopyWithImpl<$Res, _$_CategoryScheduleDto>
    implements _$$_CategoryScheduleDtoCopyWith<$Res> {
  __$$_CategoryScheduleDtoCopyWithImpl(_$_CategoryScheduleDto _value,
      $Res Function(_$_CategoryScheduleDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categorie_name = freezed,
  }) {
    return _then(_$_CategoryScheduleDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categorie_name: freezed == categorie_name
          ? _value.categorie_name
          : categorie_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryScheduleDto extends _CategoryScheduleDto {
  const _$_CategoryScheduleDto({this.id, this.categorie_name}) : super._();

  factory _$_CategoryScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryScheduleDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? categorie_name;

  @override
  String toString() {
    return 'CategoryScheduleDto(id: $id, categorie_name: $categorie_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryScheduleDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categorie_name, categorie_name) ||
                other.categorie_name == categorie_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, categorie_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryScheduleDtoCopyWith<_$_CategoryScheduleDto> get copyWith =>
      __$$_CategoryScheduleDtoCopyWithImpl<_$_CategoryScheduleDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryScheduleDtoToJson(
      this,
    );
  }
}

abstract class _CategoryScheduleDto extends CategoryScheduleDto {
  const factory _CategoryScheduleDto(
      {final int? id, final String? categorie_name}) = _$_CategoryScheduleDto;
  const _CategoryScheduleDto._() : super._();

  factory _CategoryScheduleDto.fromJson(Map<String, dynamic> json) =
      _$_CategoryScheduleDto.fromJson;

  @override
  int? get id;
  @override
  String? get categorie_name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryScheduleDtoCopyWith<_$_CategoryScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
