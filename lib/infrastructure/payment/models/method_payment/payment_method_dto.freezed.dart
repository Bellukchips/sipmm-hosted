// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMethodDto _$PaymentMethodDtoFromJson(Map<String, dynamic> json) {
  return _PaymentMethodDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodDto {
  int? get id => throw _privateConstructorUsedError;
  String? get payment_name => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  String? get media_payment => throw _privateConstructorUsedError;
  String? get payment_number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodDtoCopyWith<PaymentMethodDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodDtoCopyWith<$Res> {
  factory $PaymentMethodDtoCopyWith(
          PaymentMethodDto value, $Res Function(PaymentMethodDto) then) =
      _$PaymentMethodDtoCopyWithImpl<$Res, PaymentMethodDto>;
  @useResult
  $Res call(
      {int? id,
      String? payment_name,
      String? total,
      String? method,
      String? media_payment,
      String? payment_number});
}

/// @nodoc
class _$PaymentMethodDtoCopyWithImpl<$Res, $Val extends PaymentMethodDto>
    implements $PaymentMethodDtoCopyWith<$Res> {
  _$PaymentMethodDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? payment_name = freezed,
    Object? total = freezed,
    Object? method = freezed,
    Object? media_payment = freezed,
    Object? payment_number = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_name: freezed == payment_name
          ? _value.payment_name
          : payment_name // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      media_payment: freezed == media_payment
          ? _value.media_payment
          : media_payment // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_number: freezed == payment_number
          ? _value.payment_number
          : payment_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMethodDtoCopyWith<$Res>
    implements $PaymentMethodDtoCopyWith<$Res> {
  factory _$$_PaymentMethodDtoCopyWith(
          _$_PaymentMethodDto value, $Res Function(_$_PaymentMethodDto) then) =
      __$$_PaymentMethodDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? payment_name,
      String? total,
      String? method,
      String? media_payment,
      String? payment_number});
}

/// @nodoc
class __$$_PaymentMethodDtoCopyWithImpl<$Res>
    extends _$PaymentMethodDtoCopyWithImpl<$Res, _$_PaymentMethodDto>
    implements _$$_PaymentMethodDtoCopyWith<$Res> {
  __$$_PaymentMethodDtoCopyWithImpl(
      _$_PaymentMethodDto _value, $Res Function(_$_PaymentMethodDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? payment_name = freezed,
    Object? total = freezed,
    Object? method = freezed,
    Object? media_payment = freezed,
    Object? payment_number = freezed,
  }) {
    return _then(_$_PaymentMethodDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_name: freezed == payment_name
          ? _value.payment_name
          : payment_name // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      media_payment: freezed == media_payment
          ? _value.media_payment
          : media_payment // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_number: freezed == payment_number
          ? _value.payment_number
          : payment_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMethodDto extends _PaymentMethodDto {
  const _$_PaymentMethodDto(
      {this.id,
      this.payment_name,
      this.total,
      this.method,
      this.media_payment,
      this.payment_number})
      : super._();

  factory _$_PaymentMethodDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMethodDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? payment_name;
  @override
  final String? total;
  @override
  final String? method;
  @override
  final String? media_payment;
  @override
  final String? payment_number;

  @override
  String toString() {
    return 'PaymentMethodDto(id: $id, payment_name: $payment_name, total: $total, method: $method, media_payment: $media_payment, payment_number: $payment_number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethodDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.payment_name, payment_name) ||
                other.payment_name == payment_name) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.media_payment, media_payment) ||
                other.media_payment == media_payment) &&
            (identical(other.payment_number, payment_number) ||
                other.payment_number == payment_number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, payment_name, total, method,
      media_payment, payment_number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodDtoCopyWith<_$_PaymentMethodDto> get copyWith =>
      __$$_PaymentMethodDtoCopyWithImpl<_$_PaymentMethodDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMethodDtoToJson(
      this,
    );
  }
}

abstract class _PaymentMethodDto extends PaymentMethodDto {
  const factory _PaymentMethodDto(
      {final int? id,
      final String? payment_name,
      final String? total,
      final String? method,
      final String? media_payment,
      final String? payment_number}) = _$_PaymentMethodDto;
  const _PaymentMethodDto._() : super._();

  factory _PaymentMethodDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodDto.fromJson;

  @override
  int? get id;
  @override
  String? get payment_name;
  @override
  String? get total;
  @override
  String? get method;
  @override
  String? get media_payment;
  @override
  String? get payment_number;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodDtoCopyWith<_$_PaymentMethodDto> get copyWith =>
      throw _privateConstructorUsedError;
}
