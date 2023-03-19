// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SavePayment {
  int? get id => throw _privateConstructorUsedError;
  int? get id_user => throw _privateConstructorUsedError;
  int? get id_student => throw _privateConstructorUsedError;
  int? get id_payment => throw _privateConstructorUsedError;
  String? get date_payment => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavePaymentCopyWith<SavePayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePaymentCopyWith<$Res> {
  factory $SavePaymentCopyWith(
          SavePayment value, $Res Function(SavePayment) then) =
      _$SavePaymentCopyWithImpl<$Res, SavePayment>;
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
class _$SavePaymentCopyWithImpl<$Res, $Val extends SavePayment>
    implements $SavePaymentCopyWith<$Res> {
  _$SavePaymentCopyWithImpl(this._value, this._then);

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
abstract class _$$_SavePaymentCopyWith<$Res>
    implements $SavePaymentCopyWith<$Res> {
  factory _$$_SavePaymentCopyWith(
          _$_SavePayment value, $Res Function(_$_SavePayment) then) =
      __$$_SavePaymentCopyWithImpl<$Res>;
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
class __$$_SavePaymentCopyWithImpl<$Res>
    extends _$SavePaymentCopyWithImpl<$Res, _$_SavePayment>
    implements _$$_SavePaymentCopyWith<$Res> {
  __$$_SavePaymentCopyWithImpl(
      _$_SavePayment _value, $Res Function(_$_SavePayment) _then)
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
    return _then(_$_SavePayment(
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

class _$_SavePayment extends _SavePayment {
  const _$_SavePayment(
      {required this.id,
      required this.id_user,
      required this.id_student,
      required this.id_payment,
      required this.date_payment,
      required this.total})
      : super._();

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
    return 'SavePayment(id: $id, id_user: $id_user, id_student: $id_student, id_payment: $id_payment, date_payment: $date_payment, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavePayment &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType, id, id_user, id_student, id_payment, date_payment, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavePaymentCopyWith<_$_SavePayment> get copyWith =>
      __$$_SavePaymentCopyWithImpl<_$_SavePayment>(this, _$identity);
}

abstract class _SavePayment extends SavePayment {
  const factory _SavePayment(
      {required final int? id,
      required final int? id_user,
      required final int? id_student,
      required final int? id_payment,
      required final String? date_payment,
      required final String? total}) = _$_SavePayment;
  const _SavePayment._() : super._();

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
  _$$_SavePaymentCopyWith<_$_SavePayment> get copyWith =>
      throw _privateConstructorUsedError;
}
