// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavePaymentDto _$SavePaymentDtoFromJson(Map<String, dynamic> json) {
  return _SavePaymentDto.fromJson(json);
}

/// @nodoc
mixin _$SavePaymentDto {
  int? get id => throw _privateConstructorUsedError;
  int? get id_user => throw _privateConstructorUsedError;
  int? get id_student => throw _privateConstructorUsedError;
  int? get id_payment => throw _privateConstructorUsedError;
  String? get date_payment => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePaymentDtoCopyWith<SavePaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePaymentDtoCopyWith<$Res> {
  factory $SavePaymentDtoCopyWith(
          SavePaymentDto value, $Res Function(SavePaymentDto) then) =
      _$SavePaymentDtoCopyWithImpl<$Res, SavePaymentDto>;
  @useResult
  $Res call(
      {int? id,
      int? id_user,
      int? id_student,
      int? id_payment,
      String? date_payment,
      String? total});
}

/// @nodoc
class _$SavePaymentDtoCopyWithImpl<$Res, $Val extends SavePaymentDto>
    implements $SavePaymentDtoCopyWith<$Res> {
  _$SavePaymentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? id_user = freezed,
    Object? id_student = freezed,
    Object? id_payment = freezed,
    Object? date_payment = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      id_user: freezed == id_user
          ? _value.id_user
          : id_user // ignore: cast_nullable_to_non_nullable
              as int?,
      id_student: freezed == id_student
          ? _value.id_student
          : id_student // ignore: cast_nullable_to_non_nullable
              as int?,
      id_payment: freezed == id_payment
          ? _value.id_payment
          : id_payment // ignore: cast_nullable_to_non_nullable
              as int?,
      date_payment: freezed == date_payment
          ? _value.date_payment
          : date_payment // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavePaymentDtoCopyWith<$Res>
    implements $SavePaymentDtoCopyWith<$Res> {
  factory _$$_SavePaymentDtoCopyWith(
          _$_SavePaymentDto value, $Res Function(_$_SavePaymentDto) then) =
      __$$_SavePaymentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? id_user,
      int? id_student,
      int? id_payment,
      String? date_payment,
      String? total});
}

/// @nodoc
class __$$_SavePaymentDtoCopyWithImpl<$Res>
    extends _$SavePaymentDtoCopyWithImpl<$Res, _$_SavePaymentDto>
    implements _$$_SavePaymentDtoCopyWith<$Res> {
  __$$_SavePaymentDtoCopyWithImpl(
      _$_SavePaymentDto _value, $Res Function(_$_SavePaymentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? id_user = freezed,
    Object? id_student = freezed,
    Object? id_payment = freezed,
    Object? date_payment = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_SavePaymentDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      id_user: freezed == id_user
          ? _value.id_user
          : id_user // ignore: cast_nullable_to_non_nullable
              as int?,
      id_student: freezed == id_student
          ? _value.id_student
          : id_student // ignore: cast_nullable_to_non_nullable
              as int?,
      id_payment: freezed == id_payment
          ? _value.id_payment
          : id_payment // ignore: cast_nullable_to_non_nullable
              as int?,
      date_payment: freezed == date_payment
          ? _value.date_payment
          : date_payment // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavePaymentDto extends _SavePaymentDto {
  const _$_SavePaymentDto(
      {this.id,
      this.id_user,
      this.id_student,
      this.id_payment,
      this.date_payment,
      this.total})
      : super._();

  factory _$_SavePaymentDto.fromJson(Map<String, dynamic> json) =>
      _$$_SavePaymentDtoFromJson(json);

  @override
  final int? id;
  @override
  final int? id_user;
  @override
  final int? id_student;
  @override
  final int? id_payment;
  @override
  final String? date_payment;
  @override
  final String? total;

  @override
  String toString() {
    return 'SavePaymentDto(id: $id, id_user: $id_user, id_student: $id_student, id_payment: $id_payment, date_payment: $date_payment, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavePaymentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.id_user, id_user) || other.id_user == id_user) &&
            (identical(other.id_student, id_student) ||
                other.id_student == id_student) &&
            (identical(other.id_payment, id_payment) ||
                other.id_payment == id_payment) &&
            (identical(other.date_payment, date_payment) ||
                other.date_payment == date_payment) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, id_user, id_student, id_payment, date_payment, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavePaymentDtoCopyWith<_$_SavePaymentDto> get copyWith =>
      __$$_SavePaymentDtoCopyWithImpl<_$_SavePaymentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavePaymentDtoToJson(
      this,
    );
  }
}

abstract class _SavePaymentDto extends SavePaymentDto {
  const factory _SavePaymentDto(
      {final int? id,
      final int? id_user,
      final int? id_student,
      final int? id_payment,
      final String? date_payment,
      final String? total}) = _$_SavePaymentDto;
  const _SavePaymentDto._() : super._();

  factory _SavePaymentDto.fromJson(Map<String, dynamic> json) =
      _$_SavePaymentDto.fromJson;

  @override
  int? get id;
  @override
  int? get id_user;
  @override
  int? get id_student;
  @override
  int? get id_payment;
  @override
  String? get date_payment;
  @override
  String? get total;
  @override
  @JsonKey(ignore: true)
  _$$_SavePaymentDtoCopyWith<_$_SavePaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
