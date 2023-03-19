// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() watchCategory,
    required TResult Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)
        notReceivedSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? watchCategory,
    TResult? Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)?
        notReceivedSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchCategory,
    TResult Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)?
        notReceivedSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchCategory value) watchCategory,
    required TResult Function(_NotReceivedSchhedule value) notReceivedSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchCategory value)? watchCategory,
    TResult? Function(_NotReceivedSchhedule value)? notReceivedSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchCategory value)? watchCategory,
    TResult Function(_NotReceivedSchhedule value)? notReceivedSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryScheduleEventCopyWith<$Res> {
  factory $CategoryScheduleEventCopyWith(CategoryScheduleEvent value,
          $Res Function(CategoryScheduleEvent) then) =
      _$CategoryScheduleEventCopyWithImpl<$Res, CategoryScheduleEvent>;
}

/// @nodoc
class _$CategoryScheduleEventCopyWithImpl<$Res,
        $Val extends CategoryScheduleEvent>
    implements $CategoryScheduleEventCopyWith<$Res> {
  _$CategoryScheduleEventCopyWithImpl(this._value, this._then);

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
    extends _$CategoryScheduleEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CategoryScheduleEvent.started()';
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
    required TResult Function() watchCategory,
    required TResult Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)
        notReceivedSchedule,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? watchCategory,
    TResult? Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)?
        notReceivedSchedule,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchCategory,
    TResult Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)?
        notReceivedSchedule,
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
    required TResult Function(_WatchCategory value) watchCategory,
    required TResult Function(_NotReceivedSchhedule value) notReceivedSchedule,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchCategory value)? watchCategory,
    TResult? Function(_NotReceivedSchhedule value)? notReceivedSchedule,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchCategory value)? watchCategory,
    TResult Function(_NotReceivedSchhedule value)? notReceivedSchedule,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CategoryScheduleEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_WatchCategoryCopyWith<$Res> {
  factory _$$_WatchCategoryCopyWith(
          _$_WatchCategory value, $Res Function(_$_WatchCategory) then) =
      __$$_WatchCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchCategoryCopyWithImpl<$Res>
    extends _$CategoryScheduleEventCopyWithImpl<$Res, _$_WatchCategory>
    implements _$$_WatchCategoryCopyWith<$Res> {
  __$$_WatchCategoryCopyWithImpl(
      _$_WatchCategory _value, $Res Function(_$_WatchCategory) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchCategory implements _WatchCategory {
  const _$_WatchCategory();

  @override
  String toString() {
    return 'CategoryScheduleEvent.watchCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() watchCategory,
    required TResult Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)
        notReceivedSchedule,
  }) {
    return watchCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? watchCategory,
    TResult? Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)?
        notReceivedSchedule,
  }) {
    return watchCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchCategory,
    TResult Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)?
        notReceivedSchedule,
    required TResult orElse(),
  }) {
    if (watchCategory != null) {
      return watchCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchCategory value) watchCategory,
    required TResult Function(_NotReceivedSchhedule value) notReceivedSchedule,
  }) {
    return watchCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchCategory value)? watchCategory,
    TResult? Function(_NotReceivedSchhedule value)? notReceivedSchedule,
  }) {
    return watchCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchCategory value)? watchCategory,
    TResult Function(_NotReceivedSchhedule value)? notReceivedSchedule,
    required TResult orElse(),
  }) {
    if (watchCategory != null) {
      return watchCategory(this);
    }
    return orElse();
  }
}

abstract class _WatchCategory implements CategoryScheduleEvent {
  const factory _WatchCategory() = _$_WatchCategory;
}

/// @nodoc
abstract class _$$_NotReceivedSchheduleCopyWith<$Res> {
  factory _$$_NotReceivedSchheduleCopyWith(_$_NotReceivedSchhedule value,
          $Res Function(_$_NotReceivedSchhedule) then) =
      __$$_NotReceivedSchheduleCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule});
}

/// @nodoc
class __$$_NotReceivedSchheduleCopyWithImpl<$Res>
    extends _$CategoryScheduleEventCopyWithImpl<$Res, _$_NotReceivedSchhedule>
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
              as Either<ScheduleFailure, List<CategorySchedule>>,
    ));
  }
}

/// @nodoc

class _$_NotReceivedSchhedule implements _NotReceivedSchhedule {
  const _$_NotReceivedSchhedule(this.failureOrSchedule);

  @override
  final Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule;

  @override
  String toString() {
    return 'CategoryScheduleEvent.notReceivedSchedule(failureOrSchedule: $failureOrSchedule)';
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
    required TResult Function() started,
    required TResult Function() watchCategory,
    required TResult Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)
        notReceivedSchedule,
  }) {
    return notReceivedSchedule(failureOrSchedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? watchCategory,
    TResult? Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)?
        notReceivedSchedule,
  }) {
    return notReceivedSchedule?.call(failureOrSchedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchCategory,
    TResult Function(
            Either<ScheduleFailure, List<CategorySchedule>> failureOrSchedule)?
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
    required TResult Function(_Started value) started,
    required TResult Function(_WatchCategory value) watchCategory,
    required TResult Function(_NotReceivedSchhedule value) notReceivedSchedule,
  }) {
    return notReceivedSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchCategory value)? watchCategory,
    TResult? Function(_NotReceivedSchhedule value)? notReceivedSchedule,
  }) {
    return notReceivedSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchCategory value)? watchCategory,
    TResult Function(_NotReceivedSchhedule value)? notReceivedSchedule,
    required TResult orElse(),
  }) {
    if (notReceivedSchedule != null) {
      return notReceivedSchedule(this);
    }
    return orElse();
  }
}

abstract class _NotReceivedSchhedule implements CategoryScheduleEvent {
  const factory _NotReceivedSchhedule(
      final Either<ScheduleFailure, List<CategorySchedule>>
          failureOrSchedule) = _$_NotReceivedSchhedule;

  Either<ScheduleFailure, List<CategorySchedule>> get failureOrSchedule;
  @JsonKey(ignore: true)
  _$$_NotReceivedSchheduleCopyWith<_$_NotReceivedSchhedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CategorySchedule> category) loadCategory,
    required TResult Function(ScheduleFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<CategorySchedule> category)? loadCategory,
    TResult? Function(ScheduleFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CategorySchedule> category)? loadCategory,
    TResult Function(ScheduleFailure failure)? loadFailure,
    TResult Function()? loadEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSchedule value) loadCategory,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadEmpty value) loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSchedule value)? loadCategory,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadEmpty value)? loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSchedule value)? loadCategory,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadEmpty value)? loadEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryScheduleStateCopyWith<$Res> {
  factory $CategoryScheduleStateCopyWith(CategoryScheduleState value,
          $Res Function(CategoryScheduleState) then) =
      _$CategoryScheduleStateCopyWithImpl<$Res, CategoryScheduleState>;
}

/// @nodoc
class _$CategoryScheduleStateCopyWithImpl<$Res,
        $Val extends CategoryScheduleState>
    implements $CategoryScheduleStateCopyWith<$Res> {
  _$CategoryScheduleStateCopyWithImpl(this._value, this._then);

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
    extends _$CategoryScheduleStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CategoryScheduleState.initial()';
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
    required TResult Function(List<CategorySchedule> category) loadCategory,
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
    TResult? Function(List<CategorySchedule> category)? loadCategory,
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
    TResult Function(List<CategorySchedule> category)? loadCategory,
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
    required TResult Function(_LoadSchedule value) loadCategory,
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
    TResult? Function(_LoadSchedule value)? loadCategory,
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
    TResult Function(_LoadSchedule value)? loadCategory,
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

abstract class _Initial implements CategoryScheduleState {
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
    extends _$CategoryScheduleStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'CategoryScheduleState.loadInProgress()';
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
    required TResult Function(List<CategorySchedule> category) loadCategory,
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
    TResult? Function(List<CategorySchedule> category)? loadCategory,
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
    TResult Function(List<CategorySchedule> category)? loadCategory,
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
    required TResult Function(_LoadSchedule value) loadCategory,
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
    TResult? Function(_LoadSchedule value)? loadCategory,
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
    TResult Function(_LoadSchedule value)? loadCategory,
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

abstract class _LoadInProgress implements CategoryScheduleState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadScheduleCopyWith<$Res> {
  factory _$$_LoadScheduleCopyWith(
          _$_LoadSchedule value, $Res Function(_$_LoadSchedule) then) =
      __$$_LoadScheduleCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategorySchedule> category});
}

/// @nodoc
class __$$_LoadScheduleCopyWithImpl<$Res>
    extends _$CategoryScheduleStateCopyWithImpl<$Res, _$_LoadSchedule>
    implements _$$_LoadScheduleCopyWith<$Res> {
  __$$_LoadScheduleCopyWithImpl(
      _$_LoadSchedule _value, $Res Function(_$_LoadSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_LoadSchedule(
      null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategorySchedule>,
    ));
  }
}

/// @nodoc

class _$_LoadSchedule implements _LoadSchedule {
  const _$_LoadSchedule(final List<CategorySchedule> category)
      : _category = category;

  final List<CategorySchedule> _category;
  @override
  List<CategorySchedule> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'CategoryScheduleState.loadCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSchedule &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_category));

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
    required TResult Function(List<CategorySchedule> category) loadCategory,
    required TResult Function(ScheduleFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<CategorySchedule> category)? loadCategory,
    TResult? Function(ScheduleFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CategorySchedule> category)? loadCategory,
    TResult Function(ScheduleFailure failure)? loadFailure,
    TResult Function()? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadCategory != null) {
      return loadCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSchedule value) loadCategory,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadEmpty value) loadEmpty,
  }) {
    return loadCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSchedule value)? loadCategory,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadEmpty value)? loadEmpty,
  }) {
    return loadCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSchedule value)? loadCategory,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadEmpty value)? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadCategory != null) {
      return loadCategory(this);
    }
    return orElse();
  }
}

abstract class _LoadSchedule implements CategoryScheduleState {
  const factory _LoadSchedule(final List<CategorySchedule> category) =
      _$_LoadSchedule;

  List<CategorySchedule> get category;
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
    extends _$CategoryScheduleStateCopyWithImpl<$Res, _$_LoadFailure>
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
    return 'CategoryScheduleState.loadFailure(failure: $failure)';
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
    required TResult Function(List<CategorySchedule> category) loadCategory,
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
    TResult? Function(List<CategorySchedule> category)? loadCategory,
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
    TResult Function(List<CategorySchedule> category)? loadCategory,
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
    required TResult Function(_LoadSchedule value) loadCategory,
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
    TResult? Function(_LoadSchedule value)? loadCategory,
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
    TResult Function(_LoadSchedule value)? loadCategory,
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

abstract class _LoadFailure implements CategoryScheduleState {
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
    extends _$CategoryScheduleStateCopyWithImpl<$Res, _$_LoadEmpty>
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
    return 'CategoryScheduleState.loadEmpty()';
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
    required TResult Function(List<CategorySchedule> category) loadCategory,
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
    TResult? Function(List<CategorySchedule> category)? loadCategory,
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
    TResult Function(List<CategorySchedule> category)? loadCategory,
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
    required TResult Function(_LoadSchedule value) loadCategory,
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
    TResult? Function(_LoadSchedule value)? loadCategory,
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
    TResult Function(_LoadSchedule value)? loadCategory,
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

abstract class _LoadEmpty implements CategoryScheduleState {
  const factory _LoadEmpty() = _$_LoadEmpty;
}
