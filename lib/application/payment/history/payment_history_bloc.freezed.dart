// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? id, String date) watchHistoryPayment,
    required TResult Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)
        notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? id, String date)? watchHistoryPayment,
    TResult? Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)?
        notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? id, String date)? watchHistoryPayment,
    TResult Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)?
        notReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchHistoryPayment value) watchHistoryPayment,
    required TResult Function(_NotReceived value) notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchHistoryPayment value)? watchHistoryPayment,
    TResult? Function(_NotReceived value)? notReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchHistoryPayment value)? watchHistoryPayment,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentHistoryEventCopyWith<$Res> {
  factory $PaymentHistoryEventCopyWith(
          PaymentHistoryEvent value, $Res Function(PaymentHistoryEvent) then) =
      _$PaymentHistoryEventCopyWithImpl<$Res, PaymentHistoryEvent>;
}

/// @nodoc
class _$PaymentHistoryEventCopyWithImpl<$Res, $Val extends PaymentHistoryEvent>
    implements $PaymentHistoryEventCopyWith<$Res> {
  _$PaymentHistoryEventCopyWithImpl(this._value, this._then);

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
    extends _$PaymentHistoryEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PaymentHistoryEvent.started()';
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
    required TResult Function(int? id, String date) watchHistoryPayment,
    required TResult Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)
        notReceived,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? id, String date)? watchHistoryPayment,
    TResult? Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)?
        notReceived,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? id, String date)? watchHistoryPayment,
    TResult Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)?
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
    required TResult Function(_WatchHistoryPayment value) watchHistoryPayment,
    required TResult Function(_NotReceived value) notReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchHistoryPayment value)? watchHistoryPayment,
    TResult? Function(_NotReceived value)? notReceived,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchHistoryPayment value)? watchHistoryPayment,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PaymentHistoryEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_WatchHistoryPaymentCopyWith<$Res> {
  factory _$$_WatchHistoryPaymentCopyWith(_$_WatchHistoryPayment value,
          $Res Function(_$_WatchHistoryPayment) then) =
      __$$_WatchHistoryPaymentCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id, String date});
}

/// @nodoc
class __$$_WatchHistoryPaymentCopyWithImpl<$Res>
    extends _$PaymentHistoryEventCopyWithImpl<$Res, _$_WatchHistoryPayment>
    implements _$$_WatchHistoryPaymentCopyWith<$Res> {
  __$$_WatchHistoryPaymentCopyWithImpl(_$_WatchHistoryPayment _value,
      $Res Function(_$_WatchHistoryPayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = null,
  }) {
    return _then(_$_WatchHistoryPayment(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchHistoryPayment implements _WatchHistoryPayment {
  const _$_WatchHistoryPayment(this.id, this.date);

  @override
  final int? id;
  @override
  final String date;

  @override
  String toString() {
    return 'PaymentHistoryEvent.watchHistoryPayment(id: $id, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchHistoryPayment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchHistoryPaymentCopyWith<_$_WatchHistoryPayment> get copyWith =>
      __$$_WatchHistoryPaymentCopyWithImpl<_$_WatchHistoryPayment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? id, String date) watchHistoryPayment,
    required TResult Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)
        notReceived,
  }) {
    return watchHistoryPayment(id, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? id, String date)? watchHistoryPayment,
    TResult? Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)?
        notReceived,
  }) {
    return watchHistoryPayment?.call(id, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? id, String date)? watchHistoryPayment,
    TResult Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)?
        notReceived,
    required TResult orElse(),
  }) {
    if (watchHistoryPayment != null) {
      return watchHistoryPayment(id, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchHistoryPayment value) watchHistoryPayment,
    required TResult Function(_NotReceived value) notReceived,
  }) {
    return watchHistoryPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchHistoryPayment value)? watchHistoryPayment,
    TResult? Function(_NotReceived value)? notReceived,
  }) {
    return watchHistoryPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchHistoryPayment value)? watchHistoryPayment,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) {
    if (watchHistoryPayment != null) {
      return watchHistoryPayment(this);
    }
    return orElse();
  }
}

abstract class _WatchHistoryPayment implements PaymentHistoryEvent {
  const factory _WatchHistoryPayment(final int? id, final String date) =
      _$_WatchHistoryPayment;

  int? get id;
  String get date;
  @JsonKey(ignore: true)
  _$$_WatchHistoryPaymentCopyWith<_$_WatchHistoryPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotReceivedCopyWith<$Res> {
  factory _$$_NotReceivedCopyWith(
          _$_NotReceived value, $Res Function(_$_NotReceived) then) =
      __$$_NotReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<PaymentFailure, List<PaymentHistory>> failureOrHistory});
}

/// @nodoc
class __$$_NotReceivedCopyWithImpl<$Res>
    extends _$PaymentHistoryEventCopyWithImpl<$Res, _$_NotReceived>
    implements _$$_NotReceivedCopyWith<$Res> {
  __$$_NotReceivedCopyWithImpl(
      _$_NotReceived _value, $Res Function(_$_NotReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrHistory = null,
  }) {
    return _then(_$_NotReceived(
      null == failureOrHistory
          ? _value.failureOrHistory
          : failureOrHistory // ignore: cast_nullable_to_non_nullable
              as Either<PaymentFailure, List<PaymentHistory>>,
    ));
  }
}

/// @nodoc

class _$_NotReceived implements _NotReceived {
  const _$_NotReceived(this.failureOrHistory);

  @override
  final Either<PaymentFailure, List<PaymentHistory>> failureOrHistory;

  @override
  String toString() {
    return 'PaymentHistoryEvent.notReceived(failureOrHistory: $failureOrHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotReceived &&
            (identical(other.failureOrHistory, failureOrHistory) ||
                other.failureOrHistory == failureOrHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotReceivedCopyWith<_$_NotReceived> get copyWith =>
      __$$_NotReceivedCopyWithImpl<_$_NotReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? id, String date) watchHistoryPayment,
    required TResult Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)
        notReceived,
  }) {
    return notReceived(failureOrHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? id, String date)? watchHistoryPayment,
    TResult? Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)?
        notReceived,
  }) {
    return notReceived?.call(failureOrHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? id, String date)? watchHistoryPayment,
    TResult Function(
            Either<PaymentFailure, List<PaymentHistory>> failureOrHistory)?
        notReceived,
    required TResult orElse(),
  }) {
    if (notReceived != null) {
      return notReceived(failureOrHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_WatchHistoryPayment value) watchHistoryPayment,
    required TResult Function(_NotReceived value) notReceived,
  }) {
    return notReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_WatchHistoryPayment value)? watchHistoryPayment,
    TResult? Function(_NotReceived value)? notReceived,
  }) {
    return notReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_WatchHistoryPayment value)? watchHistoryPayment,
    TResult Function(_NotReceived value)? notReceived,
    required TResult orElse(),
  }) {
    if (notReceived != null) {
      return notReceived(this);
    }
    return orElse();
  }
}

abstract class _NotReceived implements PaymentHistoryEvent {
  const factory _NotReceived(
          final Either<PaymentFailure, List<PaymentHistory>> failureOrHistory) =
      _$_NotReceived;

  Either<PaymentFailure, List<PaymentHistory>> get failureOrHistory;
  @JsonKey(ignore: true)
  _$$_NotReceivedCopyWith<_$_NotReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<PaymentHistory> payment) loadSuccess,
    required TResult Function(PaymentFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PaymentHistory> payment)? loadSuccess,
    TResult? Function(PaymentFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PaymentHistory> payment)? loadSuccess,
    TResult Function(PaymentFailure failure)? loadFailure,
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
abstract class $PaymentHistoryStateCopyWith<$Res> {
  factory $PaymentHistoryStateCopyWith(
          PaymentHistoryState value, $Res Function(PaymentHistoryState) then) =
      _$PaymentHistoryStateCopyWithImpl<$Res, PaymentHistoryState>;
}

/// @nodoc
class _$PaymentHistoryStateCopyWithImpl<$Res, $Val extends PaymentHistoryState>
    implements $PaymentHistoryStateCopyWith<$Res> {
  _$PaymentHistoryStateCopyWithImpl(this._value, this._then);

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
    extends _$PaymentHistoryStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PaymentHistoryState.initial()';
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
    required TResult Function(List<PaymentHistory> payment) loadSuccess,
    required TResult Function(PaymentFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PaymentHistory> payment)? loadSuccess,
    TResult? Function(PaymentFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PaymentHistory> payment)? loadSuccess,
    TResult Function(PaymentFailure failure)? loadFailure,
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

abstract class _Initial implements PaymentHistoryState {
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
    extends _$PaymentHistoryStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'PaymentHistoryState.loadInProgress()';
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
    required TResult Function(List<PaymentHistory> payment) loadSuccess,
    required TResult Function(PaymentFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PaymentHistory> payment)? loadSuccess,
    TResult? Function(PaymentFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PaymentHistory> payment)? loadSuccess,
    TResult Function(PaymentFailure failure)? loadFailure,
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

abstract class _LoadInProgress implements PaymentHistoryState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PaymentHistory> payment});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$PaymentHistoryStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_$_LoadSuccess(
      null == payment
          ? _value._payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<PaymentHistory>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<PaymentHistory> payment) : _payment = payment;

  final List<PaymentHistory> _payment;
  @override
  List<PaymentHistory> get payment {
    if (_payment is EqualUnmodifiableListView) return _payment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payment);
  }

  @override
  String toString() {
    return 'PaymentHistoryState.loadSuccess(payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._payment, _payment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_payment));

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
    required TResult Function(List<PaymentHistory> payment) loadSuccess,
    required TResult Function(PaymentFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadSuccess(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PaymentHistory> payment)? loadSuccess,
    TResult? Function(PaymentFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadSuccess?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PaymentHistory> payment)? loadSuccess,
    TResult Function(PaymentFailure failure)? loadFailure,
    TResult Function()? loadEmpty,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(payment);
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

abstract class _LoadSuccess implements PaymentHistoryState {
  const factory _LoadSuccess(final List<PaymentHistory> payment) =
      _$_LoadSuccess;

  List<PaymentHistory> get payment;
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
  $Res call({PaymentFailure failure});

  $PaymentFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$PaymentHistoryStateCopyWithImpl<$Res, _$_LoadFailure>
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
              as PaymentFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentFailureCopyWith<$Res> get failure {
    return $PaymentFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final PaymentFailure failure;

  @override
  String toString() {
    return 'PaymentHistoryState.loadFailure(failure: $failure)';
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
    required TResult Function(List<PaymentHistory> payment) loadSuccess,
    required TResult Function(PaymentFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PaymentHistory> payment)? loadSuccess,
    TResult? Function(PaymentFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PaymentHistory> payment)? loadSuccess,
    TResult Function(PaymentFailure failure)? loadFailure,
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

abstract class _LoadFailure implements PaymentHistoryState {
  const factory _LoadFailure(final PaymentFailure failure) = _$_LoadFailure;

  PaymentFailure get failure;
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
    extends _$PaymentHistoryStateCopyWithImpl<$Res, _$_LoadEmpty>
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
    return 'PaymentHistoryState.loadEmpty()';
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
    required TResult Function(List<PaymentHistory> payment) loadSuccess,
    required TResult Function(PaymentFailure failure) loadFailure,
    required TResult Function() loadEmpty,
  }) {
    return loadEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PaymentHistory> payment)? loadSuccess,
    TResult? Function(PaymentFailure failure)? loadFailure,
    TResult? Function()? loadEmpty,
  }) {
    return loadEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PaymentHistory> payment)? loadSuccess,
    TResult Function(PaymentFailure failure)? loadFailure,
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

abstract class _LoadEmpty implements PaymentHistoryState {
  const factory _LoadEmpty() = _$_LoadEmpty;
}
