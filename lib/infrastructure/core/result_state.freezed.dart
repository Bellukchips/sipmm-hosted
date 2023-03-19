// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(T value) success,
    required TResult Function(String? msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? serverError,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(T value)? success,
    TResult? Function(String? msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(T value)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_UnknownError<T> value) unknownError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_UnknownError<T> value)? unknownError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_UnknownError<T> value)? unknownError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<T, $Res> {
  factory $ResultStateCopyWith(
          ResultState<T> value, $Res Function(ResultState<T>) then) =
      _$ResultStateCopyWithImpl<T, $Res, ResultState<T>>;
}

/// @nodoc
class _$ResultStateCopyWithImpl<T, $Res, $Val extends ResultState<T>>
    implements $ResultStateCopyWith<T, $Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NoConnectionCopyWith<T, $Res> {
  factory _$$_NoConnectionCopyWith(
          _$_NoConnection<T> value, $Res Function(_$_NoConnection<T>) then) =
      __$$_NoConnectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_NoConnectionCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$_NoConnection<T>>
    implements _$$_NoConnectionCopyWith<T, $Res> {
  __$$_NoConnectionCopyWithImpl(
      _$_NoConnection<T> _value, $Res Function(_$_NoConnection<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoConnection<T> implements _NoConnection<T> {
  const _$_NoConnection();

  @override
  String toString() {
    return 'ResultState<$T>.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoConnection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(T value) success,
    required TResult Function(String? msg) error,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? serverError,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(T value)? success,
    TResult? Function(String? msg)? error,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(T value)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_UnknownError<T> value) unknownError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_UnknownError<T> value)? unknownError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_UnknownError<T> value)? unknownError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection<T> implements ResultState<T> {
  const factory _NoConnection() = _$_NoConnection<T>;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<T, $Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError<T> value, $Res Function(_$_ServerError<T>) then) =
      __$$_ServerErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$_ServerError<T>>
    implements _$$_ServerErrorCopyWith<T, $Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError<T> _value, $Res Function(_$_ServerError<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServerError<T> implements _ServerError<T> {
  const _$_ServerError();

  @override
  String toString() {
    return 'ResultState<$T>.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(T value) success,
    required TResult Function(String? msg) error,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? serverError,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(T value)? success,
    TResult? Function(String? msg)? error,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(T value)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_UnknownError<T> value) unknownError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_UnknownError<T> value)? unknownError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_UnknownError<T> value)? unknownError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError<T> implements ResultState<T> {
  const factory _ServerError() = _$_ServerError<T>;
}

/// @nodoc
abstract class _$$_UnknownErrorCopyWith<T, $Res> {
  factory _$$_UnknownErrorCopyWith(
          _$_UnknownError<T> value, $Res Function(_$_UnknownError<T>) then) =
      __$$_UnknownErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_UnknownErrorCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$_UnknownError<T>>
    implements _$$_UnknownErrorCopyWith<T, $Res> {
  __$$_UnknownErrorCopyWithImpl(
      _$_UnknownError<T> _value, $Res Function(_$_UnknownError<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnknownError<T> implements _UnknownError<T> {
  const _$_UnknownError();

  @override
  String toString() {
    return 'ResultState<$T>.unknownError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnknownError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(T value) success,
    required TResult Function(String? msg) error,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? serverError,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(T value)? success,
    TResult? Function(String? msg)? error,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(T value)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_UnknownError<T> value) unknownError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_UnknownError<T> value)? unknownError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_UnknownError<T> value)? unknownError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownError<T> implements ResultState<T> {
  const factory _UnknownError() = _$_UnknownError<T>;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<T, $Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading<T> value, $Res Function(_$_Loading<T>) then) =
      __$$_LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$_Loading<T>>
    implements _$$_LoadingCopyWith<T, $Res> {
  __$$_LoadingCopyWithImpl(
      _$_Loading<T> _value, $Res Function(_$_Loading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'ResultState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(T value) success,
    required TResult Function(String? msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? serverError,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(T value)? success,
    TResult? Function(String? msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(T value)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_UnknownError<T> value) unknownError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_UnknownError<T> value)? unknownError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_UnknownError<T> value)? unknownError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements ResultState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$$_InitialCopyWith<T, $Res> {
  factory _$$_InitialCopyWith(
          _$_Initial<T> value, $Res Function(_$_Initial<T>) then) =
      __$$_InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$_Initial<T>>
    implements _$$_InitialCopyWith<T, $Res> {
  __$$_InitialCopyWithImpl(
      _$_Initial<T> _value, $Res Function(_$_Initial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'ResultState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(T value) success,
    required TResult Function(String? msg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? serverError,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(T value)? success,
    TResult? Function(String? msg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(T value)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_UnknownError<T> value) unknownError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_UnknownError<T> value)? unknownError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_UnknownError<T> value)? unknownError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ResultState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<T, $Res> {
  factory _$$_SuccessCopyWith(
          _$_Success<T> value, $Res Function(_$_Success<T>) then) =
      __$$_SuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$_Success<T>>
    implements _$$_SuccessCopyWith<T, $Res> {
  __$$_SuccessCopyWithImpl(
      _$_Success<T> _value, $Res Function(_$_Success<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Success<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Success<T> implements _Success<T> {
  const _$_Success(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'ResultState<$T>.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<T, _$_Success<T>> get copyWith =>
      __$$_SuccessCopyWithImpl<T, _$_Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(T value) success,
    required TResult Function(String? msg) error,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? serverError,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(T value)? success,
    TResult? Function(String? msg)? error,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(T value)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_UnknownError<T> value) unknownError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_UnknownError<T> value)? unknownError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_UnknownError<T> value)? unknownError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements ResultState<T> {
  const factory _Success(final T value) = _$_Success<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<T, _$_Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<T, $Res> {
  factory _$$_ErrorCopyWith(
          _$_Error<T> value, $Res Function(_$_Error<T>) then) =
      __$$_ErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$_Error<T>>
    implements _$$_ErrorCopyWith<T, $Res> {
  __$$_ErrorCopyWithImpl(_$_Error<T> _value, $Res Function(_$_Error<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$_Error<T>(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error<T> implements _Error<T> {
  const _$_Error(this.msg);

  @override
  final String? msg;

  @override
  String toString() {
    return 'ResultState<$T>.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error<T> &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<T, _$_Error<T>> get copyWith =>
      __$$_ErrorCopyWithImpl<T, _$_Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function() unknownError,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(T value) success,
    required TResult Function(String? msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? serverError,
    TResult? Function()? unknownError,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(T value)? success,
    TResult? Function(String? msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function()? unknownError,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(T value)? success,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_UnknownError<T> value) unknownError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_UnknownError<T> value)? unknownError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_UnknownError<T> value)? unknownError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements ResultState<T> {
  const factory _Error(final String? msg) = _$_Error<T>;

  String? get msg;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<T, _$_Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
