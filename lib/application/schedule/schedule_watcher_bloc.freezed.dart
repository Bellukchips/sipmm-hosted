// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String day) watchSchedule,
    required TResult Function(
            Either<ScheduleFailure, List<Schedule>> failureOrSchedule)
        notReceivedSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String day)? watchSchedule,
    TResult? Function(
            Either<ScheduleFailure, List<Schedule>> failureOrSchedule)?
        notReceivedSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String day)? watchSchedule,
    TResult Function(Either<ScheduleFailure, List<Schedule>> failureOrSchedule)?
        notReceivedSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchSchedule value) watchSchedule,
    required TResult Function(_NotReceivedSchhedule value) notReceivedSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchSchedule value)? watchSchedule,
    TResult? Function(_NotReceivedSchhedule value)? notReceivedSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchSchedule value)? watchSchedule,
    TResult Function(_NotReceivedSchhedule value)? notReceivedSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleWatcherEventCopyWith<$Res> {
  factory $ScheduleWatcherEventCopyWith(ScheduleWatcherEvent value,
          $Res Function(ScheduleWatcherEvent) then) =
      _$ScheduleWatcherEventCopyWithImpl<$Res, ScheduleWatcherEvent>;
}

/// @nodoc
class _$ScheduleWatcherEventCopyWithImpl<$Res,
        $Val extends ScheduleWatcherEvent>
    implements $ScheduleWatcherEventCopyWith<$Res> {
  _$ScheduleWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WatchScheduleCopyWith<$Res> {
  factory _$$_WatchScheduleCopyWith(
          _$_WatchSchedule value, $Res Function(_$_WatchSchedule) then) =
      __$$_WatchScheduleCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, String day});
}

/// @nodoc
class __$$_WatchScheduleCopyWithImpl<$Res>
    extends _$ScheduleWatcherEventCopyWithImpl<$Res, _$_WatchSchedule>
    implements _$$_WatchScheduleCopyWith<$Res> {
  __$$_WatchScheduleCopyWithImpl(
      _$_WatchSchedule _value, $Res Function(_$_WatchSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? day = null,
  }) {
    return _then(_$_WatchSchedule(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchSchedule implements _WatchSchedule {
  const _$_WatchSchedule(this.category, this.day);

  @override
  final String category;
  @override
  final String day;

  @override
  String toString() {
    return 'ScheduleWatcherEvent.watchSchedule(category: $category, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchSchedule &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.day, day) || other.day == day));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchScheduleCopyWith<_$_WatchSchedule> get copyWith =>
      __$$_WatchScheduleCopyWithImpl<_$_WatchSchedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String day) watchSchedule,
    required TResult Function(
            Either<ScheduleFailure, List<Schedule>> failureOrSchedule)
        notReceivedSchedule,
  }) {
    return watchSchedule(category, day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String day)? watchSchedule,
    TResult? Function(
            Either<ScheduleFailure, List<Schedule>> failureOrSchedule)?
        notReceivedSchedule,
  }) {
    return watchSchedule?.call(category, day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String day)? watchSchedule,
    TResult Function(Either<ScheduleFailure, List<Schedule>> failureOrSchedule)?
        notReceivedSchedule,
    required TResult orElse(),
  }) {
    if (watchSchedule != null) {
      return watchSchedule(category, day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchSchedule value) watchSchedule,
    required TResult Function(_NotReceivedSchhedule value) notReceivedSchedule,
  }) {
    return watchSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchSchedule value)? watchSchedule,
    TResult? Function(_NotReceivedSchhedule value)? notReceivedSchedule,
  }) {
    return watchSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchSchedule value)? watchSchedule,
    TResult Function(_NotReceivedSchhedule value)? notReceivedSchedule,
    required TResult orElse(),
  }) {
    if (watchSchedule != null) {
      return watchSchedule(this);
    }
    return orElse();
  }
}

abstract class _WatchSchedule implements ScheduleWatcherEvent {
  const factory _WatchSchedule(final String category, final String day) =
      _$_WatchSchedule;

  String get category;
  String get day;
  @JsonKey(ignore: true)
  _$$_WatchScheduleCopyWith<_$_WatchSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotReceivedSchheduleCopyWith<$Res> {
  factory _$$_NotReceivedSchheduleCopyWith(_$_NotReceivedSchhedule value,
          $Res Function(_$_NotReceivedSchhedule) then) =
      __$$_NotReceivedSchheduleCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<ScheduleFailure, List<Schedule>> failureOrSchedule});
}

/// @nodoc
class __$$_NotReceivedSchheduleCopyWithImpl<$Res>
    extends _$ScheduleWatcherEventCopyWithImpl<$Res, _$_NotReceivedSchhedule>
    implements _$$_NotReceivedSchheduleCopyWith<$Res> {
  __$$_NotReceivedSchheduleCopyWithImpl(_$_NotReceivedSchhedule _value,
      $Res Function(_$_NotReceivedSchhedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSchedule = null,
  }) {
    return _then(_$_NotReceivedSchhedule(
      null == failureOrSchedule
          ? _value.failureOrSchedule
          : failureOrSchedule // ignore: cast_nullable_to_non_nullable
              as Either<ScheduleFailure, List<Schedule>>,
    ));
  }
}

/// @nodoc

class _$_NotReceivedSchhedule implements _NotReceivedSchhedule {
  const _$_NotReceivedSchhedule(this.failureOrSchedule);

  @override
  final Either<ScheduleFailure, List<Schedule>> failureOrSchedule;

  @override
  String toString() {
    return 'ScheduleWatcherEvent.notReceivedSchedule(failureOrSchedule: $failureOrSchedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotReceivedSchhedule &&
            (identical(other.failureOrSchedule, failureOrSchedule) ||
                other.failureOrSchedule == failureOrSchedule));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrSchedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotReceivedSchheduleCopyWith<_$_NotReceivedSchhedule> get copyWith =>
      __$$_NotReceivedSchheduleCopyWithImpl<_$_NotReceivedSchhedule>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String day) watchSchedule,
    required TResult Function(
            Either<ScheduleFailure, List<Schedule>> failureOrSchedule)
        notReceivedSchedule,
  }) {
    return notReceivedSchedule(failureOrSchedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String day)? watchSchedule,
    TResult? Function(
            Either<ScheduleFailure, List<Schedule>> failureOrSchedule)?
        notReceivedSchedule,
  }) {
    return notReceivedSchedule?.call(failureOrSchedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String day)? watchSchedule,
    TResult Function(Either<ScheduleFailure, List<Schedule>> failureOrSchedule)?
        notReceivedSchedule,
    required TResult orElse(),
  }) {
    if (notReceivedSchedule != null) {
      return notReceivedSchedule(failureOrSchedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchSchedule value) watchSchedule,
    required TResult Function(_NotReceivedSchhedule value) notReceivedSchedule,
  }) {
    return notReceivedSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchSchedule value)? watchSchedule,
    TResult? Function(_NotReceivedSchhedule value)? notReceivedSchedule,
  }) {
    return notReceivedSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchSchedule value)? watchSchedule,
    TResult Function(_NotReceivedSchhedule value)? notReceivedSchedule,
    required TResult orElse(),
  }) {
    if (notReceivedSchedule != null) {
      return notReceivedSchedule(this);
    }
    return orElse();
  }
}

abstract class _NotReceivedSchhedule implements ScheduleWatcherEvent {
  const factory _NotReceivedSchhedule(
          final Either<ScheduleFailure, List<Schedule>> failureOrSchedule) =
      _$_NotReceivedSchhedule;

  Either<ScheduleFailure, List<Schedule>> get failureOrSchedule;
  @JsonKey(ignore: true)
  _$$_NotReceivedSchheduleCopyWith<_$_NotReceivedSchhedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Schedule> schedule) loadSchedule,
    required TResult Function(ScheduleFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Schedule> schedule)? loadSchedule,
    TResult? Function(ScheduleFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Schedule> schedule)? loadSchedule,
    TResult Function(ScheduleFailure failure)? loadFailure,
    TResult Function()? loadEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSchedule value) loadSchedule,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadEmpty value) loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSchedule value)? loadSchedule,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadEmpty value)? loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSchedule value)? loadSchedule,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadEmpty value)? loadEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleWatcherStateCopyWith<$Res> {
  factory $ScheduleWatcherStateCopyWith(ScheduleWatcherState value,
          $Res Function(ScheduleWatcherState) then) =
      _$ScheduleWatcherStateCopyWithImpl<$Res, ScheduleWatcherState>;
}

/// @nodoc
class _$ScheduleWatcherStateCopyWithImpl<$Res,
        $Val extends ScheduleWatcherState>
    implements $ScheduleWatcherStateCopyWith<$Res> {
  _$ScheduleWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$ScheduleWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ScheduleWatcherState.initial()';
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
    required TResult Function(List<Schedule> schedule) loadSchedule,
    required TResult Function(ScheduleFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Schedule> schedule)? loadSchedule,
    TResult? Function(ScheduleFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Schedule> schedule)? loadSchedule,
    TResult Function(ScheduleFailure failure)? loadFailure,
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
    required TResult Function(_LoadSchedule value) loadSchedule,
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
    TResult? Function(_LoadSchedule value)? loadSchedule,
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
    TResult Function(_LoadSchedule value)? loadSchedule,
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

abstract class _Initial implements ScheduleWatcherState {
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
    extends _$ScheduleWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'ScheduleWatcherState.loadInProgress()';
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
    required TResult Function(List<Schedule> schedule) loadSchedule,
    required TResult Function(ScheduleFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Schedule> schedule)? loadSchedule,
    TResult? Function(ScheduleFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Schedule> schedule)? loadSchedule,
    TResult Function(ScheduleFailure failure)? loadFailure,
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
    required TResult Function(_LoadSchedule value) loadSchedule,
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
    TResult? Function(_LoadSchedule value)? loadSchedule,
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
    TResult Function(_LoadSchedule value)? loadSchedule,
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

abstract class _LoadInProgress implements ScheduleWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadScheduleCopyWith<$Res> {
  factory _$$_LoadScheduleCopyWith(
          _$_LoadSchedule value, $Res Function(_$_LoadSchedule) then) =
      __$$_LoadScheduleCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Schedule> schedule});
}

/// @nodoc
class __$$_LoadScheduleCopyWithImpl<$Res>
    extends _$ScheduleWatcherStateCopyWithImpl<$Res, _$_LoadSchedule>
    implements _$$_LoadScheduleCopyWith<$Res> {
  __$$_LoadScheduleCopyWithImpl(
      _$_LoadSchedule _value, $Res Function(_$_LoadSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
  }) {
    return _then(_$_LoadSchedule(
      null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
    ));
  }
}

/// @nodoc

class _$_LoadSchedule implements _LoadSchedule {
  const _$_LoadSchedule(final List<Schedule> schedule) : _schedule = schedule;

  final List<Schedule> _schedule;
  @override
  List<Schedule> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'ScheduleWatcherState.loadSchedule(schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSchedule &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_schedule));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadScheduleCopyWith<_$_LoadSchedule> get copyWith =>
      __$$_LoadScheduleCopyWithImpl<_$_LoadSchedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Schedule> schedule) loadSchedule,
    required TResult Function(ScheduleFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadSchedule(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Schedule> schedule)? loadSchedule,
    TResult? Function(ScheduleFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadSchedule?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Schedule> schedule)? loadSchedule,
    TResult Function(ScheduleFailure failure)? loadFailure,
    TResult Function()? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadSchedule != null) {
      return loadSchedule(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSchedule value) loadSchedule,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadEmpty value) loadEmpty,
  }) {
    return loadSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSchedule value)? loadSchedule,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadEmpty value)? loadEmpty,
  }) {
    return loadSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSchedule value)? loadSchedule,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadEmpty value)? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadSchedule != null) {
      return loadSchedule(this);
    }
    return orElse();
  }
}

abstract class _LoadSchedule implements ScheduleWatcherState {
  const factory _LoadSchedule(final List<Schedule> schedule) = _$_LoadSchedule;

  List<Schedule> get schedule;
  @JsonKey(ignore: true)
  _$$_LoadScheduleCopyWith<_$_LoadSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ScheduleFailure failure});

  $ScheduleFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ScheduleWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
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
              as ScheduleFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleFailureCopyWith<$Res> get failure {
    return $ScheduleFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final ScheduleFailure failure;

  @override
  String toString() {
    return 'ScheduleWatcherState.loadFailure(failure: $failure)';
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
    required TResult Function(List<Schedule> schedule) loadSchedule,
    required TResult Function(ScheduleFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Schedule> schedule)? loadSchedule,
    TResult? Function(ScheduleFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Schedule> schedule)? loadSchedule,
    TResult Function(ScheduleFailure failure)? loadFailure,
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
    required TResult Function(_LoadSchedule value) loadSchedule,
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
    TResult? Function(_LoadSchedule value)? loadSchedule,
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
    TResult Function(_LoadSchedule value)? loadSchedule,
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

abstract class _LoadFailure implements ScheduleWatcherState {
  const factory _LoadFailure(final ScheduleFailure failure) = _$_LoadFailure;

  ScheduleFailure get failure;
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
    extends _$ScheduleWatcherStateCopyWithImpl<$Res, _$_LoadEmpty>
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
    return 'ScheduleWatcherState.loadEmpty()';
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
    required TResult Function(List<Schedule> schedule) loadSchedule,
    required TResult Function(ScheduleFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Schedule> schedule)? loadSchedule,
    TResult? Function(ScheduleFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Schedule> schedule)? loadSchedule,
    TResult Function(ScheduleFailure failure)? loadFailure,
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
    required TResult Function(_LoadSchedule value) loadSchedule,
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
    TResult? Function(_LoadSchedule value)? loadSchedule,
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
    TResult Function(_LoadSchedule value)? loadSchedule,
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

abstract class _LoadEmpty implements ScheduleWatcherState {
  const factory _LoadEmpty() = _$_LoadEmpty;
}
