// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_permit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavePermitDto _$SavePermitDtoFromJson(Map<String, dynamic> json) {
  return _SavePermitDto.fromJson(json);
}

/// @nodoc
mixin _$SavePermitDto {
  int? get student_id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get permit_date => throw _privateConstructorUsedError;
  String? get permit_type => throw _privateConstructorUsedError;
  int? get id_program => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePermitDtoCopyWith<SavePermitDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePermitDtoCopyWith<$Res> {
  factory $SavePermitDtoCopyWith(
          SavePermitDto value, $Res Function(SavePermitDto) then) =
      _$SavePermitDtoCopyWithImpl<$Res, SavePermitDto>;
  @useResult
  $Res call(
      {int? student_id,
      String? description,
      String? permit_date,
      String? permit_type,
      int? id_program});
}

/// @nodoc
class _$SavePermitDtoCopyWithImpl<$Res, $Val extends SavePermitDto>
    implements $SavePermitDtoCopyWith<$Res> {
  _$SavePermitDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student_id = freezed,
    Object? description = freezed,
    Object? permit_date = freezed,
    Object? permit_type = freezed,
    Object? id_program = freezed,
  }) {
    return _then(_value.copyWith(
      student_id: freezed == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      permit_date: freezed == permit_date
          ? _value.permit_date
          : permit_date // ignore: cast_nullable_to_non_nullable
              as String?,
      permit_type: freezed == permit_type
          ? _value.permit_type
          : permit_type // ignore: cast_nullable_to_non_nullable
              as String?,
      id_program: freezed == id_program
          ? _value.id_program
          : id_program // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavePermitDtoCopyWith<$Res>
    implements $SavePermitDtoCopyWith<$Res> {
  factory _$$_SavePermitDtoCopyWith(
          _$_SavePermitDto value, $Res Function(_$_SavePermitDto) then) =
      __$$_SavePermitDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? student_id,
      String? description,
      String? permit_date,
      String? permit_type,
      int? id_program});
}

/// @nodoc
class __$$_SavePermitDtoCopyWithImpl<$Res>
    extends _$SavePermitDtoCopyWithImpl<$Res, _$_SavePermitDto>
    implements _$$_SavePermitDtoCopyWith<$Res> {
  __$$_SavePermitDtoCopyWithImpl(
      _$_SavePermitDto _value, $Res Function(_$_SavePermitDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student_id = freezed,
    Object? description = freezed,
    Object? permit_date = freezed,
    Object? permit_type = freezed,
    Object? id_program = freezed,
  }) {
    return _then(_$_SavePermitDto(
      student_id: freezed == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      permit_date: freezed == permit_date
          ? _value.permit_date
          : permit_date // ignore: cast_nullable_to_non_nullable
              as String?,
      permit_type: freezed == permit_type
          ? _value.permit_type
          : permit_type // ignore: cast_nullable_to_non_nullable
              as String?,
      id_program: freezed == id_program
          ? _value.id_program
          : id_program // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavePermitDto extends _SavePermitDto {
  const _$_SavePermitDto(
      {this.student_id,
      this.description,
      this.permit_date,
      this.permit_type,
      this.id_program})
      : super._();

  factory _$_SavePermitDto.fromJson(Map<String, dynamic> json) =>
      _$$_SavePermitDtoFromJson(json);

  @override
  final int? student_id;
  @override
  final String? description;
  @override
  final String? permit_date;
  @override
  final String? permit_type;
  @override
  final int? id_program;

  @override
  String toString() {
    return 'SavePermitDto(student_id: $student_id, description: $description, permit_date: $permit_date, permit_type: $permit_type, id_program: $id_program)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavePermitDto &&
            (identical(other.student_id, student_id) ||
                other.student_id == student_id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.permit_date, permit_date) ||
                other.permit_date == permit_date) &&
            (identical(other.permit_type, permit_type) ||
                other.permit_type == permit_type) &&
            (identical(other.id_program, id_program) ||
                other.id_program == id_program));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, student_id, description,
      permit_date, permit_type, id_program);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavePermitDtoCopyWith<_$_SavePermitDto> get copyWith =>
      __$$_SavePermitDtoCopyWithImpl<_$_SavePermitDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavePermitDtoToJson(
      this,
    );
  }
}

abstract class _SavePermitDto extends SavePermitDto {
  const factory _SavePermitDto(
      {final int? student_id,
      final String? description,
      final String? permit_date,
      final String? permit_type,
      final int? id_program}) = _$_SavePermitDto;
  const _SavePermitDto._() : super._();

  factory _SavePermitDto.fromJson(Map<String, dynamic> json) =
      _$_SavePermitDto.fromJson;

  @override
  int? get student_id;
  @override
  String? get description;
  @override
  String? get permit_date;
  @override
  String? get permit_type;
  @override
  int? get id_program;
  @override
  @JsonKey(ignore: true)
  _$$_SavePermitDtoCopyWith<_$_SavePermitDto> get copyWith =>
      throw _privateConstructorUsedError;
}
