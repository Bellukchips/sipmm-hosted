// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentMethod {
  int? get id => throw _privateConstructorUsedError;
  String? get paymentName => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  String? get mediaPayment => throw _privateConstructorUsedError;
  String? get paymentNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodCopyWith<PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
          PaymentMethod value, $Res Function(PaymentMethod) then) =
      _$PaymentMethodCopyWithImpl<$Res, PaymentMethod>;
  @useResult
  $Res call(
      {int? id,
      String? paymentName,
      String? total,
      String? method,
      String? mediaPayment,
      String? paymentNumber});
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res, $Val extends PaymentMethod>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentName = freezed,
    Object? total = freezed,
    Object? method = freezed,
    Object? mediaPayment = freezed,
    Object? paymentNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentName: freezed == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaPayment: freezed == mediaPayment
          ? _value.mediaPayment
          : mediaPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentNumber: freezed == paymentNumber
          ? _value.paymentNumber
          : paymentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMethodCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$_PaymentMethodCopyWith(
          _$_PaymentMethod value, $Res Function(_$_PaymentMethod) then) =
      __$$_PaymentMethodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? paymentName,
      String? total,
      String? method,
      String? mediaPayment,
      String? paymentNumber});
}

/// @nodoc
class __$$_PaymentMethodCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$_PaymentMethod>
    implements _$$_PaymentMethodCopyWith<$Res> {
  __$$_PaymentMethodCopyWithImpl(
      _$_PaymentMethod _value, $Res Function(_$_PaymentMethod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentName = freezed,
    Object? total = freezed,
    Object? method = freezed,
    Object? mediaPayment = freezed,
    Object? paymentNumber = freezed,
  }) {
    return _then(_$_PaymentMethod(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentName: freezed == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaPayment: freezed == mediaPayment
          ? _value.mediaPayment
          : mediaPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentNumber: freezed == paymentNumber
          ? _value.paymentNumber
          : paymentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PaymentMethod extends _PaymentMethod with DiagnosticableTreeMixin {
  const _$_PaymentMethod(
      {required this.id,
      required this.paymentName,
      required this.total,
      required this.method,
      required this.mediaPayment,
      required this.paymentNumber})
      : super._();

  @override
  final int? id;
  @override
  final String? paymentName;
  @override
  final String? total;
  @override
  final String? method;
  @override
  final String? mediaPayment;
  @override
  final String? paymentNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentMethod(id: $id, paymentName: $paymentName, total: $total, method: $method, mediaPayment: $mediaPayment, paymentNumber: $paymentNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentMethod'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('paymentName', paymentName))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('method', method))
      ..add(DiagnosticsProperty('mediaPayment', mediaPayment))
      ..add(DiagnosticsProperty('paymentNumber', paymentNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethod &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentName, paymentName) ||
                other.paymentName == paymentName) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.mediaPayment, mediaPayment) ||
                other.mediaPayment == mediaPayment) &&
            (identical(other.paymentNumber, paymentNumber) ||
                other.paymentNumber == paymentNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, paymentName, total, method, mediaPayment, paymentNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodCopyWith<_$_PaymentMethod> get copyWith =>
      __$$_PaymentMethodCopyWithImpl<_$_PaymentMethod>(this, _$identity);
}

abstract class _PaymentMethod extends PaymentMethod {
  const factory _PaymentMethod(
      {required final int? id,
      required final String? paymentName,
      required final String? total,
      required final String? method,
      required final String? mediaPayment,
      required final String? paymentNumber}) = _$_PaymentMethod;
  const _PaymentMethod._() : super._();

  @override
  int? get id;
  @override
  String? get paymentName;
  @override
  String? get total;
  @override
  String? get method;
  @override
  String? get mediaPayment;
  @override
  String? get paymentNumber;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodCopyWith<_$_PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}
