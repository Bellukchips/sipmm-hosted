// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PermitDto _$PermitDtoFromJson(Map<String, dynamic> json) {
  return _PermitDto.fromJson(json);
}

/// @nodoc
mixin _$PermitDto {
  int? get id => throw _privateConstructorUsedError;
  int? get student_id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get permit_type => throw _privateConstructorUsedError;
  String? get permit_date => throw _privateConstructorUsedError;
  int? get id_program => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermitDtoCopyWith<PermitDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermitDtoCopyWith<$Res> {
  factory $PermitDtoCopyWith(PermitDto value, $Res Function(PermitDto) then) =
      _$PermitDtoCopyWithImpl<$Res, PermitDto>;
  @useResult
  $Res call(
      {int? id,
      int? student_id,
      String? description,
      String? permit_type,
      String? permit_date,
      int? id_program,
      int? status});
}

/// @nodoc
class _$PermitDtoCopyWithImpl<$Res, $Val extends PermitDto>
    implements $PermitDtoCopyWith<$Res> {
  _$PermitDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? student_id = freezed,
    Object? description = freezed,
    Object? permit_type = freezed,
    Object? permit_date = freezed,
    Object? id_program = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      student_id: freezed == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      permit_type: freezed == permit_type
          ? _value.permit_type
          : permit_type // ignore: cast_nullable_to_non_nullable
              as String?,
      permit_date: freezed == permit_date
          ? _value.permit_date
          : permit_date // ignore: cast_nullable_to_non_nullable
              as String?,
      id_program: freezed == id_program
          ? _value.id_program
          : id_program // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PermitDtoCopyWith<$Res> implements $PermitDtoCopyWith<$Res> {
  factory _$$_PermitDtoCopyWith(
          _$_PermitDto value, $Res Function(_$_PermitDto) then) =
      __$$_PermitDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? student_id,
      String? description,
      String? permit_type,
      String? permit_date,
      int? id_program,
      int? status});
}

/// @nodoc
class __$$_PermitDtoCopyWithImpl<$Res>
    extends _$PermitDtoCopyWithImpl<$Res, _$_PermitDto>
    implements _$$_PermitDtoCopyWith<$Res> {
  __$$_PermitDtoCopyWithImpl(
      _$_PermitDto _value, $Res Function(_$_PermitDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? student_id = freezed,
    Object? description = freezed,
    Object? permit_type = freezed,
    Object? permit_date = freezed,
    Object? id_program = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_PermitDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      student_id: freezed == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      permit_type: freezed == permit_type
          ? _value.permit_type
          : permit_type // ignore: cast_nullable_to_non_nullable
              as String?,
      permit_date: freezed == permit_date
          ? _value.permit_date
          : permit_date // ignore: cast_nullable_to_non_nullable
              as String?,
      id_program: freezed == id_program
          ? _value.id_program
          : id_program // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PermitDto extends _PermitDto with DiagnosticableTreeMixin {
  _$_PermitDto(
      {this.id,
      this.student_id,
      this.description,
      this.permit_type,
      this.permit_date,
      this.id_program,
      this.status})
      : super._();

  factory _$_PermitDto.fromJson(Map<String, dynamic> json) =>
      _$$_PermitDtoFromJson(json);

  @override
  final int? id;
  @override
  final int? student_id;
  @override
  final String? description;
  @override
  final String? permit_type;
  @override
  final String? permit_date;
  @override
  final int? id_program;
  @override
  final int? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PermitDto(id: $id, student_id: $student_id, description: $description, permit_type: $permit_type, permit_date: $permit_date, id_program: $id_program, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PermitDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('student_id', student_id))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('permit_type', permit_type))
      ..add(DiagnosticsProperty('permit_date', permit_date))
      ..add(DiagnosticsProperty('id_program', id_program))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PermitDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student_id, student_id) ||
                other.student_id == student_id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.permit_type, permit_type) ||
                other.permit_type == permit_type) &&
            (identical(other.permit_date, permit_date) ||
                other.permit_date == permit_date) &&
            (identical(other.id_program, id_program) ||
                other.id_program == id_program) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, student_id, description,
      permit_type, permit_date, id_program, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermitDtoCopyWith<_$_PermitDto> get copyWith =>
      __$$_PermitDtoCopyWithImpl<_$_PermitDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PermitDtoToJson(
      this,
    );
  }
}

abstract class _PermitDto extends PermitDto {
  factory _PermitDto(
      {final int? id,
      final int? student_id,
      final String? description,
      final String? permit_type,
      final String? permit_date,
      final int? id_program,
      final int? status}) = _$_PermitDto;
  _PermitDto._() : super._();

  factory _PermitDto.fromJson(Map<String, dynamic> json) =
      _$_PermitDto.fromJson;

  @override
  int? get id;
  @override
  int? get student_id;
  @override
  String? get description;
  @override
  String? get permit_type;
  @override
  String? get permit_date;
  @override
  int? get id_program;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$_PermitDtoCopyWith<_$_PermitDto> get copyWith =>
      throw _privateConstructorUsedError;
}
