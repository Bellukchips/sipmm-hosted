// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentForm {
  NumberValue? get type => throw _privateConstructorUsedError;
  DateValue? get date_payment => throw _privateConstructorUsedError;
  CurrencyRupiahValue? get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentFormCopyWith<PaymentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFormCopyWith<$Res> {
  factory $PaymentFormCopyWith(
          PaymentForm value, $Res Function(PaymentForm) then) =
      _$PaymentFormCopyWithImpl<$Res, PaymentForm>;
  @useResult
  $Res call(
      {NumberValue? type, DateValue? date_payment, CurrencyRupiahValue? total});
}

/// @nodoc
class _$PaymentFormCopyWithImpl<$Res, $Val extends PaymentForm>
    implements $PaymentFormCopyWith<$Res> {
  _$PaymentFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? date_payment = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NumberValue?,
      date_payment: freezed == date_payment
          ? _value.date_payment
          : date_payment // ignore: cast_nullable_to_non_nullable
              as DateValue?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as CurrencyRupiahValue?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentFormCopyWith<$Res>
    implements $PaymentFormCopyWith<$Res> {
  factory _$$_PaymentFormCopyWith(
          _$_PaymentForm value, $Res Function(_$_PaymentForm) then) =
      __$$_PaymentFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NumberValue? type, DateValue? date_payment, CurrencyRupiahValue? total});
}

/// @nodoc
class __$$_PaymentFormCopyWithImpl<$Res>
    extends _$PaymentFormCopyWithImpl<$Res, _$_PaymentForm>
    implements _$$_PaymentFormCopyWith<$Res> {
  __$$_PaymentFormCopyWithImpl(
      _$_PaymentForm _value, $Res Function(_$_PaymentForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? date_payment = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_PaymentForm(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NumberValue?,
      date_payment: freezed == date_payment
          ? _value.date_payment
          : date_payment // ignore: cast_nullable_to_non_nullable
              as DateValue?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as CurrencyRupiahValue?,
    ));
  }
}

/// @nodoc

class _$_PaymentForm extends _PaymentForm {
  const _$_PaymentForm(
      {required this.type, required this.date_payment, required this.total})
      : super._();

  @override
  final NumberValue? type;
  @override
  final DateValue? date_payment;
  @override
  final CurrencyRupiahValue? total;

  @override
  String toString() {
    return 'PaymentForm(type: $type, date_payment: $date_payment, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentForm &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date_payment, date_payment) ||
                other.date_payment == date_payment) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, date_payment, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentFormCopyWith<_$_PaymentForm> get copyWith =>
      __$$_PaymentFormCopyWithImpl<_$_PaymentForm>(this, _$identity);
}

abstract class _PaymentForm extends PaymentForm {
  const factory _PaymentForm(
      {required final NumberValue? type,
      required final DateValue? date_payment,
      required final CurrencyRupiahValue? total}) = _$_PaymentForm;
  const _PaymentForm._() : super._();

  @override
  NumberValue? get type;
  @override
  DateValue? get date_payment;
  @override
  CurrencyRupiahValue? get total;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentFormCopyWith<_$_PaymentForm> get copyWith =>
      throw _privateConstructorUsedError;
}
