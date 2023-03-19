// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presence_type_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PresenceTypeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() watchType,
    required TResult Function(
            Either<PresenceFailure, List<PresenceType>> failureOrType)
        notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? watchType,
    TResult? Function(
            Either<PresenceFailure, List<PresenceType>> failureOrType)?
        notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchType,
    TResult Function(Either<PresenceFailure, List<PresenceType>> failureOrType)?
        notReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchLoad value) watchType,
    required TResult Function(_NotReceived value) notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchLoad value)? watchType,
    TResult? Function(_NotReceived value)? notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchLoad value)? watchType,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresenceTypeEventCopyWith<$Res> {
  factory $PresenceTypeEventCopyWith(
          PresenceTypeEvent value, $Res Function(PresenceTypeEvent) then) =
      _$PresenceTypeEventCopyWithImpl<$Res, PresenceTypeEvent>;
}

/// @nodoc
class _$PresenceTypeEventCopyWithImpl<$Res, $Val extends PresenceTypeEvent>
    implements $PresenceTypeEventCopyWith<$Res> {
  _$PresenceTypeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$PresenceTypeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PresenceTypeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() watchType,
    required TResult Function(
            Either<PresenceFailure, List<PresenceType>> failureOrType)
        notReceived,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? watchType,
    TResult? Function(
            Either<PresenceFailure, List<PresenceType>> failureOrType)?
        notReceived,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchType,
    TResult Function(Either<PresenceFailure, List<PresenceType>> failureOrType)?
        notReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchLoad value) watchType,
    required TResult Function(_NotReceived value) notReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchLoad value)? watchType,
    TResult? Function(_NotReceived value)? notReceived,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchLoad value)? watchType,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PresenceTypeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_WatchLoadCopyWith<$Res> {
  factory _$$_WatchLoadCopyWith(
          _$_WatchLoad value, $Res Function(_$_WatchLoad) then) =
      __$$_WatchLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchLoadCopyWithImpl<$Res>
    extends _$PresenceTypeEventCopyWithImpl<$Res, _$_WatchLoad>
    implements _$$_WatchLoadCopyWith<$Res> {
  __$$_WatchLoadCopyWithImpl(
      _$_WatchLoad _value, $Res Function(_$_WatchLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchLoad implements _WatchLoad {
  const _$_WatchLoad();

  @override
  String toString() {
    return 'PresenceTypeEvent.watchType()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() watchType,
    required TResult Function(
            Either<PresenceFailure, List<PresenceType>> failureOrType)
        notReceived,
  }) {
    return watchType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? watchType,
    TResult? Function(
            Either<PresenceFailure, List<PresenceType>> failureOrType)?
        notReceived,
  }) {
    return watchType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchType,
    TResult Function(Either<PresenceFailure, List<PresenceType>> failureOrType)?
        notReceived,
    required TResult orElse(),
  }) {
    if (watchType != null) {
      return watchType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchLoad value) watchType,
    required TResult Function(_NotReceived value) notReceived,
  }) {
    return watchType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchLoad value)? watchType,
    TResult? Function(_NotReceived value)? notReceived,
  }) {
    return watchType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchLoad value)? watchType,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) {
    if (watchType != null) {
      return watchType(this);
    }
    return orElse();
  }
}

abstract class _WatchLoad implements PresenceTypeEvent {
  const factory _WatchLoad() = _$_WatchLoad;
}

/// @nodoc
abstract class _$$_NotReceivedCopyWith<$Res> {
  factory _$$_NotReceivedCopyWith(
          _$_NotReceived value, $Res Function(_$_NotReceived) then) =
      __$$_NotReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<PresenceFailure, List<PresenceType>> failureOrType});
}

/// @nodoc
class __$$_NotReceivedCopyWithImpl<$Res>
    extends _$PresenceTypeEventCopyWithImpl<$Res, _$_NotReceived>
    implements _$$_NotReceivedCopyWith<$Res> {
  __$$_NotReceivedCopyWithImpl(
      _$_NotReceived _value, $Res Function(_$_NotReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrType = null,
  }) {
    return _then(_$_NotReceived(
      null == failureOrType
          ? _value.failureOrType
          : failureOrType // ignore: cast_nullable_to_non_nullable
              as Either<PresenceFailure, List<PresenceType>>,
    ));
  }
}

/// @nodoc

class _$_NotReceived implements _NotReceived {
  const _$_NotReceived(this.failureOrType);

  @override
  final Either<PresenceFailure, List<PresenceType>> failureOrType;

  @override
  String toString() {
    return 'PresenceTypeEvent.notReceived(failureOrType: $failureOrType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotReceived &&
            (identical(other.failureOrType, failureOrType) ||
                other.failureOrType == failureOrType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotReceivedCopyWith<_$_NotReceived> get copyWith =>
      __$$_NotReceivedCopyWithImpl<_$_NotReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() watchType,
    required TResult Function(
            Either<PresenceFailure, List<PresenceType>> failureOrType)
        notReceived,
  }) {
    return notReceived(failureOrType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? watchType,
    TResult? Function(
            Either<PresenceFailure, List<PresenceType>> failureOrType)?
        notReceived,
  }) {
    return notReceived?.call(failureOrType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchType,
    TResult Function(Either<PresenceFailure, List<PresenceType>> failureOrType)?
        notReceived,
    required TResult orElse(),
  }) {
    if (notReceived != null) {
      return notReceived(failureOrType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchLoad value) watchType,
    required TResult Function(_NotReceived value) notReceived,
  }) {
    return notReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchLoad value)? watchType,
    TResult? Function(_NotReceived value)? notReceived,
  }) {
    return notReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchLoad value)? watchType,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) {
    if (notReceived != null) {
      return notReceived(this);
    }
    return orElse();
  }
}

abstract class _NotReceived implements PresenceTypeEvent {
  const factory _NotReceived(
          final Either<PresenceFailure, List<PresenceType>> failureOrType) =
      _$_NotReceived;

  Either<PresenceFailure, List<PresenceType>> get failureOrType;
  @JsonKey(ignore: true)
  _$$_NotReceivedCopyWith<_$_NotReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PresenceTypeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<PresenceType> type) loadSuccess,
    required TResult Function(PresenceFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PresenceType> type)? loadSuccess,
    TResult? Function(PresenceFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PresenceType> type)? loadSuccess,
    TResult Function(PresenceFailure failure)? loadFailure,
    TResult Function()? loadEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadEmpty value) loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadEmpty value)? loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadEmpty value)? loadEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresenceTypeStateCopyWith<$Res> {
  factory $PresenceTypeStateCopyWith(
          PresenceTypeState value, $Res Function(PresenceTypeState) then) =
      _$PresenceTypeStateCopyWithImpl<$Res, PresenceTypeState>;
}

/// @nodoc
class _$PresenceTypeStateCopyWithImpl<$Res, $Val extends PresenceTypeState>
    implements $PresenceTypeStateCopyWith<$Res> {
  _$PresenceTypeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PresenceTypeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PresenceTypeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<PresenceType> type) loadSuccess,
    required TResult Function(PresenceFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PresenceType> type)? loadSuccess,
    TResult? Function(PresenceFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PresenceType> type)? loadSuccess,
    TResult Function(PresenceFailure failure)? loadFailure,
    TResult Function()? loadEmpty,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadEmpty value) loadEmpty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadEmpty value)? loadEmpty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadEmpty value)? loadEmpty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PresenceTypeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$PresenceTypeStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'PresenceTypeState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<PresenceType> type) loadSuccess,
    required TResult Function(PresenceFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PresenceType> type)? loadSuccess,
    TResult? Function(PresenceFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PresenceType> type)? loadSuccess,
    TResult Function(PresenceFailure failure)? loadFailure,
    TResult Function()? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadEmpty value) loadEmpty,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadEmpty value)? loadEmpty,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadEmpty value)? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PresenceTypeState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PresenceType> type});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$PresenceTypeStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_LoadSuccess(
      null == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<PresenceType>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<PresenceType> type) : _type = type;

  final List<PresenceType> _type;
  @override
  List<PresenceType> get type {
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  @override
  String toString() {
    return 'PresenceTypeState.loadSuccess(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._type, _type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_type));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<PresenceType> type) loadSuccess,
    required TResult Function(PresenceFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadSuccess(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PresenceType> type)? loadSuccess,
    TResult? Function(PresenceFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadSuccess?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PresenceType> type)? loadSuccess,
    TResult Function(PresenceFailure failure)? loadFailure,
    TResult Function()? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadEmpty value) loadEmpty,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadEmpty value)? loadEmpty,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadEmpty value)? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements PresenceTypeState {
  const factory _LoadSuccess(final List<PresenceType> type) = _$_LoadSuccess;

  List<PresenceType> get type;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({PresenceFailure failure});

  $PresenceFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$PresenceTypeStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_LoadFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PresenceFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PresenceFailureCopyWith<$Res> get failure {
    return $PresenceFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final PresenceFailure failure;

  @override
  String toString() {
    return 'PresenceTypeState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<PresenceType> type) loadSuccess,
    required TResult Function(PresenceFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PresenceType> type)? loadSuccess,
    TResult? Function(PresenceFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PresenceType> type)? loadSuccess,
    TResult Function(PresenceFailure failure)? loadFailure,
    TResult Function()? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadEmpty value) loadEmpty,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadEmpty value)? loadEmpty,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadEmpty value)? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements PresenceTypeState {
  const factory _LoadFailure(final PresenceFailure failure) = _$_LoadFailure;

  PresenceFailure get failure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadEmptyCopyWith<$Res> {
  factory _$$_LoadEmptyCopyWith(
          _$_LoadEmpty value, $Res Function(_$_LoadEmpty) then) =
      __$$_LoadEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadEmptyCopyWithImpl<$Res>
    extends _$PresenceTypeStateCopyWithImpl<$Res, _$_LoadEmpty>
    implements _$$_LoadEmptyCopyWith<$Res> {
  __$$_LoadEmptyCopyWithImpl(
      _$_LoadEmpty _value, $Res Function(_$_LoadEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadEmpty implements _LoadEmpty {
  const _$_LoadEmpty();

  @override
  String toString() {
    return 'PresenceTypeState.loadEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<PresenceType> type) loadSuccess,
    required TResult Function(PresenceFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PresenceType> type)? loadSuccess,
    TResult? Function(PresenceFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PresenceType> type)? loadSuccess,
    TResult Function(PresenceFailure failure)? loadFailure,
    TResult Function()? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadEmpty != null) {
      return loadEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadEmpty value) loadEmpty,
  }) {
    return loadEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadEmpty value)? loadEmpty,
  }) {
    return loadEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadEmpty value)? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadEmpty != null) {
      return loadEmpty(this);
    }
    return orElse();
  }
}

abstract class _LoadEmpty implements PresenceTypeState {
  const factory _LoadEmpty() = _$_LoadEmpty;
}
