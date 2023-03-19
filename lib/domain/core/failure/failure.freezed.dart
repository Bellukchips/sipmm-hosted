// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) singleLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidDate,
    required TResult Function(T failedValue) invalidNumber,
    required TResult Function(T failedValue) invalidImage,
    required TResult Function(T failedValue) invalidCurrencyRupiah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? invalidPassword,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? singleLine,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidDate,
    TResult? Function(T failedValue)? invalidNumber,
    TResult? Function(T failedValue)? invalidImage,
    TResult? Function(T failedValue)? invalidCurrencyRupiah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? singleLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidDate,
    TResult Function(T failedValue)? invalidNumber,
    TResult Function(T failedValue)? invalidImage,
    TResult Function(T failedValue)? invalidCurrencyRupiah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(SingleLine<T> value) singleLine,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidDate<T> value) invalidDate,
    required TResult Function(InvalidNumber<T> value) invalidNumber,
    required TResult Function(InvalidImage<T> value) invalidImage,
    required TResult Function(InvalidValueCurrencyRupiah<T> value)
        invalidCurrencyRupiah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? invalidPassword,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(SingleLine<T> value)? singleLine,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(InvalidDate<T> value)? invalidDate,
    TResult? Function(InvalidNumber<T> value)? invalidNumber,
    TResult? Function(InvalidImage<T> value)? invalidImage,
    TResult? Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(SingleLine<T> value)? singleLine,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidDate<T> value)? invalidDate,
    TResult Function(InvalidNumber<T> value)? invalidNumber,
    TResult Function(InvalidImage<T> value)? invalidImage,
    TResult Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmail<T>>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) singleLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidDate,
    required TResult Function(T failedValue) invalidNumber,
    required TResult Function(T failedValue) invalidImage,
    required TResult Function(T failedValue) invalidCurrencyRupiah,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? invalidPassword,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? singleLine,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidDate,
    TResult? Function(T failedValue)? invalidNumber,
    TResult? Function(T failedValue)? invalidImage,
    TResult? Function(T failedValue)? invalidCurrencyRupiah,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? singleLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidDate,
    TResult Function(T failedValue)? invalidNumber,
    TResult Function(T failedValue)? invalidImage,
    TResult Function(T failedValue)? invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(SingleLine<T> value) singleLine,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidDate<T> value) invalidDate,
    required TResult Function(InvalidNumber<T> value) invalidNumber,
    required TResult Function(InvalidImage<T> value) invalidImage,
    required TResult Function(InvalidValueCurrencyRupiah<T> value)
        invalidCurrencyRupiah,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? invalidPassword,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(SingleLine<T> value)? singleLine,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(InvalidDate<T> value)? invalidDate,
    TResult? Function(InvalidNumber<T> value)? invalidNumber,
    TResult? Function(InvalidImage<T> value)? invalidImage,
    TResult? Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(SingleLine<T> value)? singleLine,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidDate<T> value)? invalidDate,
    TResult Function(InvalidNumber<T> value)? invalidNumber,
    TResult Function(InvalidImage<T> value)? invalidImage,
    TResult Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordCopyWith(
          _$ShortPassword<T> value, $Res Function(_$ShortPassword<T>) then) =
      __$$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPassword<T>>
    implements _$$ShortPasswordCopyWith<T, $Res> {
  __$$ShortPasswordCopyWithImpl(
      _$ShortPassword<T> _value, $Res Function(_$ShortPassword<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPassword<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      __$$ShortPasswordCopyWithImpl<T, _$ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) singleLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidDate,
    required TResult Function(T failedValue) invalidNumber,
    required TResult Function(T failedValue) invalidImage,
    required TResult Function(T failedValue) invalidCurrencyRupiah,
  }) {
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? invalidPassword,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? singleLine,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidDate,
    TResult? Function(T failedValue)? invalidNumber,
    TResult? Function(T failedValue)? invalidImage,
    TResult? Function(T failedValue)? invalidCurrencyRupiah,
  }) {
    return invalidPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? singleLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidDate,
    TResult Function(T failedValue)? invalidNumber,
    TResult Function(T failedValue)? invalidImage,
    TResult Function(T failedValue)? invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(SingleLine<T> value) singleLine,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidDate<T> value) invalidDate,
    required TResult Function(InvalidNumber<T> value) invalidNumber,
    required TResult Function(InvalidImage<T> value) invalidImage,
    required TResult Function(InvalidValueCurrencyRupiah<T> value)
        invalidCurrencyRupiah,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? invalidPassword,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(SingleLine<T> value)? singleLine,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(InvalidDate<T> value)? invalidDate,
    TResult? Function(InvalidNumber<T> value)? invalidNumber,
    TResult? Function(InvalidImage<T> value)? invalidImage,
    TResult? Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(SingleLine<T> value)? singleLine,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidDate<T> value)? invalidDate,
    TResult Function(InvalidNumber<T> value)? invalidNumber,
    TResult Function(InvalidImage<T> value)? invalidImage,
    TResult Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required final T failedValue}) =
      _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$Empty<T>>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Empty<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      __$$EmptyCopyWithImpl<T, _$Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) singleLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidDate,
    required TResult Function(T failedValue) invalidNumber,
    required TResult Function(T failedValue) invalidImage,
    required TResult Function(T failedValue) invalidCurrencyRupiah,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? invalidPassword,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? singleLine,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidDate,
    TResult? Function(T failedValue)? invalidNumber,
    TResult? Function(T failedValue)? invalidImage,
    TResult? Function(T failedValue)? invalidCurrencyRupiah,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? singleLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidDate,
    TResult Function(T failedValue)? invalidNumber,
    TResult Function(T failedValue)? invalidImage,
    TResult Function(T failedValue)? invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(SingleLine<T> value) singleLine,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidDate<T> value) invalidDate,
    required TResult Function(InvalidNumber<T> value) invalidNumber,
    required TResult Function(InvalidImage<T> value) invalidImage,
    required TResult Function(InvalidValueCurrencyRupiah<T> value)
        invalidCurrencyRupiah,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? invalidPassword,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(SingleLine<T> value)? singleLine,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(InvalidDate<T> value)? invalidDate,
    TResult? Function(InvalidNumber<T> value)? invalidNumber,
    TResult? Function(InvalidImage<T> value)? invalidImage,
    TResult? Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(SingleLine<T> value)? singleLine,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidDate<T> value)? invalidDate,
    TResult Function(InvalidNumber<T> value)? invalidNumber,
    TResult Function(InvalidImage<T> value)? invalidImage,
    TResult Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MultilineCopyWith(
          _$Multiline<T> value, $Res Function(_$Multiline<T>) then) =
      __$$MultilineCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$Multiline<T>>
    implements _$$MultilineCopyWith<T, $Res> {
  __$$MultilineCopyWithImpl(
      _$Multiline<T> _value, $Res Function(_$Multiline<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Multiline<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Multiline<T> implements Multiline<T> {
  const _$Multiline({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Multiline<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultilineCopyWith<T, _$Multiline<T>> get copyWith =>
      __$$MultilineCopyWithImpl<T, _$Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) singleLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidDate,
    required TResult Function(T failedValue) invalidNumber,
    required TResult Function(T failedValue) invalidImage,
    required TResult Function(T failedValue) invalidCurrencyRupiah,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? invalidPassword,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? singleLine,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidDate,
    TResult? Function(T failedValue)? invalidNumber,
    TResult? Function(T failedValue)? invalidImage,
    TResult? Function(T failedValue)? invalidCurrencyRupiah,
  }) {
    return multiline?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? singleLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidDate,
    TResult Function(T failedValue)? invalidNumber,
    TResult Function(T failedValue)? invalidImage,
    TResult Function(T failedValue)? invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(SingleLine<T> value) singleLine,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidDate<T> value) invalidDate,
    required TResult Function(InvalidNumber<T> value) invalidNumber,
    required TResult Function(InvalidImage<T> value) invalidImage,
    required TResult Function(InvalidValueCurrencyRupiah<T> value)
        invalidCurrencyRupiah,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? invalidPassword,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(SingleLine<T> value)? singleLine,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(InvalidDate<T> value)? invalidDate,
    TResult? Function(InvalidNumber<T> value)? invalidNumber,
    TResult? Function(InvalidImage<T> value)? invalidImage,
    TResult? Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(SingleLine<T> value)? singleLine,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidDate<T> value)? invalidDate,
    TResult Function(InvalidNumber<T> value)? invalidNumber,
    TResult Function(InvalidImage<T> value)? invalidImage,
    TResult Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({required final T failedValue}) = _$Multiline<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$MultilineCopyWith<T, _$Multiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingleLineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$SingleLineCopyWith(
          _$SingleLine<T> value, $Res Function(_$SingleLine<T>) then) =
      __$$SingleLineCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$SingleLineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$SingleLine<T>>
    implements _$$SingleLineCopyWith<T, $Res> {
  __$$SingleLineCopyWithImpl(
      _$SingleLine<T> _value, $Res Function(_$SingleLine<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$SingleLine<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SingleLine<T> implements SingleLine<T> {
  const _$SingleLine({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.singleLine(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleLine<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleLineCopyWith<T, _$SingleLine<T>> get copyWith =>
      __$$SingleLineCopyWithImpl<T, _$SingleLine<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) singleLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidDate,
    required TResult Function(T failedValue) invalidNumber,
    required TResult Function(T failedValue) invalidImage,
    required TResult Function(T failedValue) invalidCurrencyRupiah,
  }) {
    return singleLine(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? invalidPassword,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? singleLine,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidDate,
    TResult? Function(T failedValue)? invalidNumber,
    TResult? Function(T failedValue)? invalidImage,
    TResult? Function(T failedValue)? invalidCurrencyRupiah,
  }) {
    return singleLine?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? singleLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidDate,
    TResult Function(T failedValue)? invalidNumber,
    TResult Function(T failedValue)? invalidImage,
    TResult Function(T failedValue)? invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (singleLine != null) {
      return singleLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(SingleLine<T> value) singleLine,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidDate<T> value) invalidDate,
    required TResult Function(InvalidNumber<T> value) invalidNumber,
    required TResult Function(InvalidImage<T> value) invalidImage,
    required TResult Function(InvalidValueCurrencyRupiah<T> value)
        invalidCurrencyRupiah,
  }) {
    return singleLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? invalidPassword,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(SingleLine<T> value)? singleLine,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(InvalidDate<T> value)? invalidDate,
    TResult? Function(InvalidNumber<T> value)? invalidNumber,
    TResult? Function(InvalidImage<T> value)? invalidImage,
    TResult? Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
  }) {
    return singleLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(SingleLine<T> value)? singleLine,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidDate<T> value)? invalidDate,
    TResult Function(InvalidNumber<T> value)? invalidNumber,
    TResult Function(InvalidImage<T> value)? invalidImage,
    TResult Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (singleLine != null) {
      return singleLine(this);
    }
    return orElse();
  }
}

abstract class SingleLine<T> implements ValueFailure<T> {
  const factory SingleLine({required final T failedValue}) = _$SingleLine<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$SingleLineCopyWith<T, _$SingleLine<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ExceedingLengthCopyWith(_$ExceedingLength<T> value,
          $Res Function(_$ExceedingLength<T>) then) =
      __$$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedingLength<T>>
    implements _$$ExceedingLengthCopyWith<T, $Res> {
  __$$ExceedingLengthCopyWithImpl(
      _$ExceedingLength<T> _value, $Res Function(_$ExceedingLength<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ExceedingLength<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      __$$ExceedingLengthCopyWithImpl<T, _$ExceedingLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) singleLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidDate,
    required TResult Function(T failedValue) invalidNumber,
    required TResult Function(T failedValue) invalidImage,
    required TResult Function(T failedValue) invalidCurrencyRupiah,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? invalidPassword,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? singleLine,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidDate,
    TResult? Function(T failedValue)? invalidNumber,
    TResult? Function(T failedValue)? invalidImage,
    TResult? Function(T failedValue)? invalidCurrencyRupiah,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? singleLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidDate,
    TResult Function(T failedValue)? invalidNumber,
    TResult Function(T failedValue)? invalidImage,
    TResult Function(T failedValue)? invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(SingleLine<T> value) singleLine,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidDate<T> value) invalidDate,
    required TResult Function(InvalidNumber<T> value) invalidNumber,
    required TResult Function(InvalidImage<T> value) invalidImage,
    required TResult Function(InvalidValueCurrencyRupiah<T> value)
        invalidCurrencyRupiah,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? invalidPassword,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(SingleLine<T> value)? singleLine,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(InvalidDate<T> value)? invalidDate,
    TResult? Function(InvalidNumber<T> value)? invalidNumber,
    TResult? Function(InvalidImage<T> value)? invalidImage,
    TResult? Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(SingleLine<T> value)? singleLine,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidDate<T> value)? invalidDate,
    TResult Function(InvalidNumber<T> value)? invalidNumber,
    TResult Function(InvalidImage<T> value)? invalidImage,
    TResult Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required final T failedValue,
      required final int max}) = _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidDateCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidDateCopyWith(
          _$InvalidDate<T> value, $Res Function(_$InvalidDate<T>) then) =
      __$$InvalidDateCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidDateCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidDate<T>>
    implements _$$InvalidDateCopyWith<T, $Res> {
  __$$InvalidDateCopyWithImpl(
      _$InvalidDate<T> _value, $Res Function(_$InvalidDate<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidDate<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidDate<T> implements InvalidDate<T> {
  const _$InvalidDate({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidDate(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidDate<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidDateCopyWith<T, _$InvalidDate<T>> get copyWith =>
      __$$InvalidDateCopyWithImpl<T, _$InvalidDate<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) singleLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidDate,
    required TResult Function(T failedValue) invalidNumber,
    required TResult Function(T failedValue) invalidImage,
    required TResult Function(T failedValue) invalidCurrencyRupiah,
  }) {
    return invalidDate(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? invalidPassword,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? singleLine,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidDate,
    TResult? Function(T failedValue)? invalidNumber,
    TResult? Function(T failedValue)? invalidImage,
    TResult? Function(T failedValue)? invalidCurrencyRupiah,
  }) {
    return invalidDate?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? singleLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidDate,
    TResult Function(T failedValue)? invalidNumber,
    TResult Function(T failedValue)? invalidImage,
    TResult Function(T failedValue)? invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidDate != null) {
      return invalidDate(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(SingleLine<T> value) singleLine,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidDate<T> value) invalidDate,
    required TResult Function(InvalidNumber<T> value) invalidNumber,
    required TResult Function(InvalidImage<T> value) invalidImage,
    required TResult Function(InvalidValueCurrencyRupiah<T> value)
        invalidCurrencyRupiah,
  }) {
    return invalidDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? invalidPassword,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(SingleLine<T> value)? singleLine,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(InvalidDate<T> value)? invalidDate,
    TResult? Function(InvalidNumber<T> value)? invalidNumber,
    TResult? Function(InvalidImage<T> value)? invalidImage,
    TResult? Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
  }) {
    return invalidDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(SingleLine<T> value)? singleLine,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidDate<T> value)? invalidDate,
    TResult Function(InvalidNumber<T> value)? invalidNumber,
    TResult Function(InvalidImage<T> value)? invalidImage,
    TResult Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidDate != null) {
      return invalidDate(this);
    }
    return orElse();
  }
}

abstract class InvalidDate<T> implements ValueFailure<T> {
  const factory InvalidDate({required final T failedValue}) = _$InvalidDate<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidDateCopyWith<T, _$InvalidDate<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidNumberCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidNumberCopyWith(
          _$InvalidNumber<T> value, $Res Function(_$InvalidNumber<T>) then) =
      __$$InvalidNumberCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidNumber<T>>
    implements _$$InvalidNumberCopyWith<T, $Res> {
  __$$InvalidNumberCopyWithImpl(
      _$InvalidNumber<T> _value, $Res Function(_$InvalidNumber<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidNumber<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidNumber<T> implements InvalidNumber<T> {
  const _$InvalidNumber({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidNumber<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidNumberCopyWith<T, _$InvalidNumber<T>> get copyWith =>
      __$$InvalidNumberCopyWithImpl<T, _$InvalidNumber<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) singleLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidDate,
    required TResult Function(T failedValue) invalidNumber,
    required TResult Function(T failedValue) invalidImage,
    required TResult Function(T failedValue) invalidCurrencyRupiah,
  }) {
    return invalidNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? invalidPassword,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? singleLine,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidDate,
    TResult? Function(T failedValue)? invalidNumber,
    TResult? Function(T failedValue)? invalidImage,
    TResult? Function(T failedValue)? invalidCurrencyRupiah,
  }) {
    return invalidNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? singleLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidDate,
    TResult Function(T failedValue)? invalidNumber,
    TResult Function(T failedValue)? invalidImage,
    TResult Function(T failedValue)? invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidNumber != null) {
      return invalidNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(SingleLine<T> value) singleLine,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidDate<T> value) invalidDate,
    required TResult Function(InvalidNumber<T> value) invalidNumber,
    required TResult Function(InvalidImage<T> value) invalidImage,
    required TResult Function(InvalidValueCurrencyRupiah<T> value)
        invalidCurrencyRupiah,
  }) {
    return invalidNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? invalidPassword,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(SingleLine<T> value)? singleLine,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(InvalidDate<T> value)? invalidDate,
    TResult? Function(InvalidNumber<T> value)? invalidNumber,
    TResult? Function(InvalidImage<T> value)? invalidImage,
    TResult? Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
  }) {
    return invalidNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(SingleLine<T> value)? singleLine,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidDate<T> value)? invalidDate,
    TResult Function(InvalidNumber<T> value)? invalidNumber,
    TResult Function(InvalidImage<T> value)? invalidImage,
    TResult Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidNumber != null) {
      return invalidNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidNumber<T> implements ValueFailure<T> {
  const factory InvalidNumber({required final T failedValue}) =
      _$InvalidNumber<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidNumberCopyWith<T, _$InvalidNumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidImageCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidImageCopyWith(
          _$InvalidImage<T> value, $Res Function(_$InvalidImage<T>) then) =
      __$$InvalidImageCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidImageCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidImage<T>>
    implements _$$InvalidImageCopyWith<T, $Res> {
  __$$InvalidImageCopyWithImpl(
      _$InvalidImage<T> _value, $Res Function(_$InvalidImage<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidImage<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidImage<T> implements InvalidImage<T> {
  const _$InvalidImage({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidImage(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidImage<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidImageCopyWith<T, _$InvalidImage<T>> get copyWith =>
      __$$InvalidImageCopyWithImpl<T, _$InvalidImage<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) singleLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidDate,
    required TResult Function(T failedValue) invalidNumber,
    required TResult Function(T failedValue) invalidImage,
    required TResult Function(T failedValue) invalidCurrencyRupiah,
  }) {
    return invalidImage(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? invalidPassword,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? singleLine,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidDate,
    TResult? Function(T failedValue)? invalidNumber,
    TResult? Function(T failedValue)? invalidImage,
    TResult? Function(T failedValue)? invalidCurrencyRupiah,
  }) {
    return invalidImage?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? singleLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidDate,
    TResult Function(T failedValue)? invalidNumber,
    TResult Function(T failedValue)? invalidImage,
    TResult Function(T failedValue)? invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidImage != null) {
      return invalidImage(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(SingleLine<T> value) singleLine,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidDate<T> value) invalidDate,
    required TResult Function(InvalidNumber<T> value) invalidNumber,
    required TResult Function(InvalidImage<T> value) invalidImage,
    required TResult Function(InvalidValueCurrencyRupiah<T> value)
        invalidCurrencyRupiah,
  }) {
    return invalidImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? invalidPassword,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(SingleLine<T> value)? singleLine,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(InvalidDate<T> value)? invalidDate,
    TResult? Function(InvalidNumber<T> value)? invalidNumber,
    TResult? Function(InvalidImage<T> value)? invalidImage,
    TResult? Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
  }) {
    return invalidImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(SingleLine<T> value)? singleLine,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidDate<T> value)? invalidDate,
    TResult Function(InvalidNumber<T> value)? invalidNumber,
    TResult Function(InvalidImage<T> value)? invalidImage,
    TResult Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidImage != null) {
      return invalidImage(this);
    }
    return orElse();
  }
}

abstract class InvalidImage<T> implements ValueFailure<T> {
  const factory InvalidImage({required final T failedValue}) =
      _$InvalidImage<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidImageCopyWith<T, _$InvalidImage<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidValueCurrencyRupiahCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidValueCurrencyRupiahCopyWith(
          _$InvalidValueCurrencyRupiah<T> value,
          $Res Function(_$InvalidValueCurrencyRupiah<T>) then) =
      __$$InvalidValueCurrencyRupiahCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidValueCurrencyRupiahCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidValueCurrencyRupiah<T>>
    implements _$$InvalidValueCurrencyRupiahCopyWith<T, $Res> {
  __$$InvalidValueCurrencyRupiahCopyWithImpl(
      _$InvalidValueCurrencyRupiah<T> _value,
      $Res Function(_$InvalidValueCurrencyRupiah<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidValueCurrencyRupiah<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidValueCurrencyRupiah<T> implements InvalidValueCurrencyRupiah<T> {
  const _$InvalidValueCurrencyRupiah({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidCurrencyRupiah(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidValueCurrencyRupiah<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidValueCurrencyRupiahCopyWith<T, _$InvalidValueCurrencyRupiah<T>>
      get copyWith => __$$InvalidValueCurrencyRupiahCopyWithImpl<T,
          _$InvalidValueCurrencyRupiah<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) singleLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidDate,
    required TResult Function(T failedValue) invalidNumber,
    required TResult Function(T failedValue) invalidImage,
    required TResult Function(T failedValue) invalidCurrencyRupiah,
  }) {
    return invalidCurrencyRupiah(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? invalidPassword,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? singleLine,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? invalidDate,
    TResult? Function(T failedValue)? invalidNumber,
    TResult? Function(T failedValue)? invalidImage,
    TResult? Function(T failedValue)? invalidCurrencyRupiah,
  }) {
    return invalidCurrencyRupiah?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? singleLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidDate,
    TResult Function(T failedValue)? invalidNumber,
    TResult Function(T failedValue)? invalidImage,
    TResult Function(T failedValue)? invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidCurrencyRupiah != null) {
      return invalidCurrencyRupiah(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(SingleLine<T> value) singleLine,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidDate<T> value) invalidDate,
    required TResult Function(InvalidNumber<T> value) invalidNumber,
    required TResult Function(InvalidImage<T> value) invalidImage,
    required TResult Function(InvalidValueCurrencyRupiah<T> value)
        invalidCurrencyRupiah,
  }) {
    return invalidCurrencyRupiah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? invalidPassword,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(SingleLine<T> value)? singleLine,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(InvalidDate<T> value)? invalidDate,
    TResult? Function(InvalidNumber<T> value)? invalidNumber,
    TResult? Function(InvalidImage<T> value)? invalidImage,
    TResult? Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
  }) {
    return invalidCurrencyRupiah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(SingleLine<T> value)? singleLine,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidDate<T> value)? invalidDate,
    TResult Function(InvalidNumber<T> value)? invalidNumber,
    TResult Function(InvalidImage<T> value)? invalidImage,
    TResult Function(InvalidValueCurrencyRupiah<T> value)?
        invalidCurrencyRupiah,
    required TResult orElse(),
  }) {
    if (invalidCurrencyRupiah != null) {
      return invalidCurrencyRupiah(this);
    }
    return orElse();
  }
}

abstract class InvalidValueCurrencyRupiah<T> implements ValueFailure<T> {
  const factory InvalidValueCurrencyRupiah({required final T failedValue}) =
      _$InvalidValueCurrencyRupiah<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidValueCurrencyRupiahCopyWith<T, _$InvalidValueCurrencyRupiah<T>>
      get copyWith => throw _privateConstructorUsedError;
}
