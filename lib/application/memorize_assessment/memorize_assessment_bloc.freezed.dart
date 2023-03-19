// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memorize_assessment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MemorizeAssessmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String surah) watchAssessment,
    required TResult Function(
            Either<AssessmentFailure, List<Memorize>> failureOrMemo)
        notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String surah)? watchAssessment,
    TResult? Function(Either<AssessmentFailure, List<Memorize>> failureOrMemo)?
        notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String surah)? watchAssessment,
    TResult Function(Either<AssessmentFailure, List<Memorize>> failureOrMemo)?
        notReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchAssessment value) watchAssessment,
    required TResult Function(_NotReceived value) notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchAssessment value)? watchAssessment,
    TResult? Function(_NotReceived value)? notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchAssessment value)? watchAssessment,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemorizeAssessmentEventCopyWith<$Res> {
  factory $MemorizeAssessmentEventCopyWith(MemorizeAssessmentEvent value,
          $Res Function(MemorizeAssessmentEvent) then) =
      _$MemorizeAssessmentEventCopyWithImpl<$Res, MemorizeAssessmentEvent>;
}

/// @nodoc
class _$MemorizeAssessmentEventCopyWithImpl<$Res,
        $Val extends MemorizeAssessmentEvent>
    implements $MemorizeAssessmentEventCopyWith<$Res> {
  _$MemorizeAssessmentEventCopyWithImpl(this._value, this._then);

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
    extends _$MemorizeAssessmentEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'MemorizeAssessmentEvent.started()';
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
    required TResult Function(String surah) watchAssessment,
    required TResult Function(
            Either<AssessmentFailure, List<Memorize>> failureOrMemo)
        notReceived,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String surah)? watchAssessment,
    TResult? Function(Either<AssessmentFailure, List<Memorize>> failureOrMemo)?
        notReceived,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String surah)? watchAssessment,
    TResult Function(Either<AssessmentFailure, List<Memorize>> failureOrMemo)?
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
    required TResult Function(_WatchAssessment value) watchAssessment,
    required TResult Function(_NotReceived value) notReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchAssessment value)? watchAssessment,
    TResult? Function(_NotReceived value)? notReceived,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchAssessment value)? watchAssessment,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MemorizeAssessmentEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_WatchAssessmentCopyWith<$Res> {
  factory _$$_WatchAssessmentCopyWith(
          _$_WatchAssessment value, $Res Function(_$_WatchAssessment) then) =
      __$$_WatchAssessmentCopyWithImpl<$Res>;
  @useResult
  $Res call({String surah});
}

/// @nodoc
class __$$_WatchAssessmentCopyWithImpl<$Res>
    extends _$MemorizeAssessmentEventCopyWithImpl<$Res, _$_WatchAssessment>
    implements _$$_WatchAssessmentCopyWith<$Res> {
  __$$_WatchAssessmentCopyWithImpl(
      _$_WatchAssessment _value, $Res Function(_$_WatchAssessment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surah = null,
  }) {
    return _then(_$_WatchAssessment(
      null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchAssessment implements _WatchAssessment {
  const _$_WatchAssessment(this.surah);

  @override
  final String surah;

  @override
  String toString() {
    return 'MemorizeAssessmentEvent.watchAssessment(surah: $surah)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchAssessment &&
            (identical(other.surah, surah) || other.surah == surah));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchAssessmentCopyWith<_$_WatchAssessment> get copyWith =>
      __$$_WatchAssessmentCopyWithImpl<_$_WatchAssessment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String surah) watchAssessment,
    required TResult Function(
            Either<AssessmentFailure, List<Memorize>> failureOrMemo)
        notReceived,
  }) {
    return watchAssessment(surah);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String surah)? watchAssessment,
    TResult? Function(Either<AssessmentFailure, List<Memorize>> failureOrMemo)?
        notReceived,
  }) {
    return watchAssessment?.call(surah);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String surah)? watchAssessment,
    TResult Function(Either<AssessmentFailure, List<Memorize>> failureOrMemo)?
        notReceived,
    required TResult orElse(),
  }) {
    if (watchAssessment != null) {
      return watchAssessment(surah);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchAssessment value) watchAssessment,
    required TResult Function(_NotReceived value) notReceived,
  }) {
    return watchAssessment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchAssessment value)? watchAssessment,
    TResult? Function(_NotReceived value)? notReceived,
  }) {
    return watchAssessment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchAssessment value)? watchAssessment,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) {
    if (watchAssessment != null) {
      return watchAssessment(this);
    }
    return orElse();
  }
}

abstract class _WatchAssessment implements MemorizeAssessmentEvent {
  const factory _WatchAssessment(final String surah) = _$_WatchAssessment;

  String get surah;
  @JsonKey(ignore: true)
  _$$_WatchAssessmentCopyWith<_$_WatchAssessment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotReceivedCopyWith<$Res> {
  factory _$$_NotReceivedCopyWith(
          _$_NotReceived value, $Res Function(_$_NotReceived) then) =
      __$$_NotReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<AssessmentFailure, List<Memorize>> failureOrMemo});
}

/// @nodoc
class __$$_NotReceivedCopyWithImpl<$Res>
    extends _$MemorizeAssessmentEventCopyWithImpl<$Res, _$_NotReceived>
    implements _$$_NotReceivedCopyWith<$Res> {
  __$$_NotReceivedCopyWithImpl(
      _$_NotReceived _value, $Res Function(_$_NotReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrMemo = null,
  }) {
    return _then(_$_NotReceived(
      null == failureOrMemo
          ? _value.failureOrMemo
          : failureOrMemo // ignore: cast_nullable_to_non_nullable
              as Either<AssessmentFailure, List<Memorize>>,
    ));
  }
}

/// @nodoc

class _$_NotReceived implements _NotReceived {
  const _$_NotReceived(this.failureOrMemo);

  @override
  final Either<AssessmentFailure, List<Memorize>> failureOrMemo;

  @override
  String toString() {
    return 'MemorizeAssessmentEvent.notReceived(failureOrMemo: $failureOrMemo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotReceived &&
            (identical(other.failureOrMemo, failureOrMemo) ||
                other.failureOrMemo == failureOrMemo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrMemo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotReceivedCopyWith<_$_NotReceived> get copyWith =>
      __$$_NotReceivedCopyWithImpl<_$_NotReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String surah) watchAssessment,
    required TResult Function(
            Either<AssessmentFailure, List<Memorize>> failureOrMemo)
        notReceived,
  }) {
    return notReceived(failureOrMemo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String surah)? watchAssessment,
    TResult? Function(Either<AssessmentFailure, List<Memorize>> failureOrMemo)?
        notReceived,
  }) {
    return notReceived?.call(failureOrMemo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String surah)? watchAssessment,
    TResult Function(Either<AssessmentFailure, List<Memorize>> failureOrMemo)?
        notReceived,
    required TResult orElse(),
  }) {
    if (notReceived != null) {
      return notReceived(failureOrMemo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchAssessment value) watchAssessment,
    required TResult Function(_NotReceived value) notReceived,
  }) {
    return notReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchAssessment value)? watchAssessment,
    TResult? Function(_NotReceived value)? notReceived,
  }) {
    return notReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchAssessment value)? watchAssessment,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) {
    if (notReceived != null) {
      return notReceived(this);
    }
    return orElse();
  }
}

abstract class _NotReceived implements MemorizeAssessmentEvent {
  const factory _NotReceived(
          final Either<AssessmentFailure, List<Memorize>> failureOrMemo) =
      _$_NotReceived;

  Either<AssessmentFailure, List<Memorize>> get failureOrMemo;
  @JsonKey(ignore: true)
  _$$_NotReceivedCopyWith<_$_NotReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemorizeAssessmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Memorize> memo) loadSuccess,
    required TResult Function() loadEmpty,
    required TResult Function(AssessmentFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Memorize> memo)? loadSuccess,
    TResult? Function()? loadEmpty,
    TResult? Function(AssessmentFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Memorize> memo)? loadSuccess,
    TResult Function()? loadEmpty,
    TResult Function(AssessmentFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadEmpty value) loadEmpty,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadEmpty value)? loadEmpty,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadEmpty value)? loadEmpty,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemorizeAssessmentStateCopyWith<$Res> {
  factory $MemorizeAssessmentStateCopyWith(MemorizeAssessmentState value,
          $Res Function(MemorizeAssessmentState) then) =
      _$MemorizeAssessmentStateCopyWithImpl<$Res, MemorizeAssessmentState>;
}

/// @nodoc
class _$MemorizeAssessmentStateCopyWithImpl<$Res,
        $Val extends MemorizeAssessmentState>
    implements $MemorizeAssessmentStateCopyWith<$Res> {
  _$MemorizeAssessmentStateCopyWithImpl(this._value, this._then);

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
    extends _$MemorizeAssessmentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MemorizeAssessmentState.initial()';
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
    required TResult Function(List<Memorize> memo) loadSuccess,
    required TResult Function() loadEmpty,
    required TResult Function(AssessmentFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Memorize> memo)? loadSuccess,
    TResult? Function()? loadEmpty,
    TResult? Function(AssessmentFailure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Memorize> memo)? loadSuccess,
    TResult Function()? loadEmpty,
    TResult Function(AssessmentFailure failure)? loadFailure,
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
    required TResult Function(_LoadEmpty value) loadEmpty,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadEmpty value)? loadEmpty,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadEmpty value)? loadEmpty,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MemorizeAssessmentState {
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
    extends _$MemorizeAssessmentStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'MemorizeAssessmentState.loadInProgress()';
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
    required TResult Function(List<Memorize> memo) loadSuccess,
    required TResult Function() loadEmpty,
    required TResult Function(AssessmentFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Memorize> memo)? loadSuccess,
    TResult? Function()? loadEmpty,
    TResult? Function(AssessmentFailure failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Memorize> memo)? loadSuccess,
    TResult Function()? loadEmpty,
    TResult Function(AssessmentFailure failure)? loadFailure,
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
    required TResult Function(_LoadEmpty value) loadEmpty,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadEmpty value)? loadEmpty,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadEmpty value)? loadEmpty,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements MemorizeAssessmentState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Memorize> memo});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$MemorizeAssessmentStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memo = null,
  }) {
    return _then(_$_LoadSuccess(
      null == memo
          ? _value._memo
          : memo // ignore: cast_nullable_to_non_nullable
              as List<Memorize>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<Memorize> memo) : _memo = memo;

  final List<Memorize> _memo;
  @override
  List<Memorize> get memo {
    if (_memo is EqualUnmodifiableListView) return _memo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memo);
  }

  @override
  String toString() {
    return 'MemorizeAssessmentState.loadSuccess(memo: $memo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._memo, _memo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_memo));

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
    required TResult Function(List<Memorize> memo) loadSuccess,
    required TResult Function() loadEmpty,
    required TResult Function(AssessmentFailure failure) loadFailure,
  }) {
    return loadSuccess(memo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Memorize> memo)? loadSuccess,
    TResult? Function()? loadEmpty,
    TResult? Function(AssessmentFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(memo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Memorize> memo)? loadSuccess,
    TResult Function()? loadEmpty,
    TResult Function(AssessmentFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(memo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadEmpty value) loadEmpty,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadEmpty value)? loadEmpty,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadEmpty value)? loadEmpty,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements MemorizeAssessmentState {
  const factory _LoadSuccess(final List<Memorize> memo) = _$_LoadSuccess;

  List<Memorize> get memo;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
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
    extends _$MemorizeAssessmentStateCopyWithImpl<$Res, _$_LoadEmpty>
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
    return 'MemorizeAssessmentState.loadEmpty()';
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
    required TResult Function(List<Memorize> memo) loadSuccess,
    required TResult Function() loadEmpty,
    required TResult Function(AssessmentFailure failure) loadFailure,
  }) {
    return loadEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Memorize> memo)? loadSuccess,
    TResult? Function()? loadEmpty,
    TResult? Function(AssessmentFailure failure)? loadFailure,
  }) {
    return loadEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Memorize> memo)? loadSuccess,
    TResult Function()? loadEmpty,
    TResult Function(AssessmentFailure failure)? loadFailure,
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
    required TResult Function(_LoadEmpty value) loadEmpty,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadEmpty value)? loadEmpty,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadEmpty value)? loadEmpty,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadEmpty != null) {
      return loadEmpty(this);
    }
    return orElse();
  }
}

abstract class _LoadEmpty implements MemorizeAssessmentState {
  const factory _LoadEmpty() = _$_LoadEmpty;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AssessmentFailure failure});

  $AssessmentFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$MemorizeAssessmentStateCopyWithImpl<$Res, _$_LoadFailure>
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
              as AssessmentFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AssessmentFailureCopyWith<$Res> get failure {
    return $AssessmentFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final AssessmentFailure failure;

  @override
  String toString() {
    return 'MemorizeAssessmentState.loadFailure(failure: $failure)';
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
    required TResult Function(List<Memorize> memo) loadSuccess,
    required TResult Function() loadEmpty,
    required TResult Function(AssessmentFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Memorize> memo)? loadSuccess,
    TResult? Function()? loadEmpty,
    TResult? Function(AssessmentFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Memorize> memo)? loadSuccess,
    TResult Function()? loadEmpty,
    TResult Function(AssessmentFailure failure)? loadFailure,
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
    required TResult Function(_LoadEmpty value) loadEmpty,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadEmpty value)? loadEmpty,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadEmpty value)? loadEmpty,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements MemorizeAssessmentState {
  const factory _LoadFailure(final AssessmentFailure failure) = _$_LoadFailure;

  AssessmentFailure get failure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
