// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Permit {
  int? get id => throw _privateConstructorUsedError;
  int? get student_id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get permit_type => throw _privateConstructorUsedError;
  String? get permit_date => throw _privateConstructorUsedError;
  int? get id_program => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PermitCopyWith<Permit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermitCopyWith<$Res> {
  factory $PermitCopyWith(Permit value, $Res Function(Permit) then) =
      _$PermitCopyWithImpl<$Res, Permit>;
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
class _$PermitCopyWithImpl<$Res, $Val extends Permit>
    implements $PermitCopyWith<$Res> {
  _$PermitCopyWithImpl(this._value, this._then);

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
abstract class _$$_PermitCopyWith<$Res> implements $PermitCopyWith<$Res> {
  factory _$$_PermitCopyWith(_$_Permit value, $Res Function(_$_Permit) then) =
      __$$_PermitCopyWithImpl<$Res>;
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
class __$$_PermitCopyWithImpl<$Res>
    extends _$PermitCopyWithImpl<$Res, _$_Permit>
    implements _$$_PermitCopyWith<$Res> {
  __$$_PermitCopyWithImpl(_$_Permit _value, $Res Function(_$_Permit) _then)
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
    return _then(_$_Permit(
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

class _$_Permit extends _Permit {
  const _$_Permit(
      {required this.id,
      required this.student_id,
      required this.description,
      required this.permit_type,
      required this.permit_date,
      required this.id_program,
      required this.status})
      : super._();

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
  String toString() {
    return 'Permit(id: $id, student_id: $student_id, description: $description, permit_type: $permit_type, permit_date: $permit_date, id_program: $id_program, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Permit &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, student_id, description,
      permit_type, permit_date, id_program, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermitCopyWith<_$_Permit> get copyWith =>
      __$$_PermitCopyWithImpl<_$_Permit>(this, _$identity);
}

abstract class _Permit extends Permit {
  const factory _Permit(
      {required final int? id,
      required final int? student_id,
      required final String? description,
      required final String? permit_type,
      required final String? permit_date,
      required final int? id_program,
      required final int? status}) = _$_Permit;
  const _Permit._() : super._();

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
  _$$_PermitCopyWith<_$_Permit> get copyWith =>
      throw _privateConstructorUsedError;
}
