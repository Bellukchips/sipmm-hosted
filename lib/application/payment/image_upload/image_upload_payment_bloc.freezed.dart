// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_upload_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageUploadPaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double progress) progress,
    required TResult Function() finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double progress)? progress,
    TResult? Function()? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double progress)? progress,
    TResult Function()? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Finish value) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Finish value)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Progress value)? progress,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploadPaymentEventCopyWith<$Res> {
  factory $ImageUploadPaymentEventCopyWith(ImageUploadPaymentEvent value,
          $Res Function(ImageUploadPaymentEvent) then) =
      _$ImageUploadPaymentEventCopyWithImpl<$Res, ImageUploadPaymentEvent>;
}

/// @nodoc
class _$ImageUploadPaymentEventCopyWithImpl<$Res,
        $Val extends ImageUploadPaymentEvent>
    implements $ImageUploadPaymentEventCopyWith<$Res> {
  _$ImageUploadPaymentEventCopyWithImpl(this._value, this._then);

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
    extends _$ImageUploadPaymentEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ImageUploadPaymentEvent.started()';
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
    required TResult Function(double progress) progress,
    required TResult Function() finish,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double progress)? progress,
    TResult? Function()? finish,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double progress)? progress,
    TResult Function()? finish,
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
    required TResult Function(_Progress value) progress,
    required TResult Function(_Finish value) finish,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Finish value)? finish,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Progress value)? progress,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ImageUploadPaymentEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ProgressCopyWith<$Res> {
  factory _$$_ProgressCopyWith(
          _$_Progress value, $Res Function(_$_Progress) then) =
      __$$_ProgressCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress});
}

/// @nodoc
class __$$_ProgressCopyWithImpl<$Res>
    extends _$ImageUploadPaymentEventCopyWithImpl<$Res, _$_Progress>
    implements _$$_ProgressCopyWith<$Res> {
  __$$_ProgressCopyWithImpl(
      _$_Progress _value, $Res Function(_$_Progress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$_Progress(
      null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Progress implements _Progress {
  const _$_Progress(this.progress);

  @override
  final double progress;

  @override
  String toString() {
    return 'ImageUploadPaymentEvent.progress(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Progress &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgressCopyWith<_$_Progress> get copyWith =>
      __$$_ProgressCopyWithImpl<_$_Progress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double progress) progress,
    required TResult Function() finish,
  }) {
    return progress(this.progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double progress)? progress,
    TResult? Function()? finish,
  }) {
    return progress?.call(this.progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double progress)? progress,
    TResult Function()? finish,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this.progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Finish value) finish,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Finish value)? finish,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Progress value)? progress,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _Progress implements ImageUploadPaymentEvent {
  const factory _Progress(final double progress) = _$_Progress;

  double get progress;
  @JsonKey(ignore: true)
  _$$_ProgressCopyWith<_$_Progress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinishCopyWith<$Res> {
  factory _$$_FinishCopyWith(_$_Finish value, $Res Function(_$_Finish) then) =
      __$$_FinishCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FinishCopyWithImpl<$Res>
    extends _$ImageUploadPaymentEventCopyWithImpl<$Res, _$_Finish>
    implements _$$_FinishCopyWith<$Res> {
  __$$_FinishCopyWithImpl(_$_Finish _value, $Res Function(_$_Finish) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Finish implements _Finish {
  const _$_Finish();

  @override
  String toString() {
    return 'ImageUploadPaymentEvent.finish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Finish);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double progress) progress,
    required TResult Function() finish,
  }) {
    return finish();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double progress)? progress,
    TResult? Function()? finish,
  }) {
    return finish?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double progress)? progress,
    TResult Function()? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Finish value) finish,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Finish value)? finish,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Progress value)? progress,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class _Finish implements ImageUploadPaymentEvent {
  const factory _Finish() = _$_Finish;
}

/// @nodoc
mixin _$ImageUploadPaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) progress,
    required TResult Function(double progress) finish,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress)? progress,
    TResult? Function(double progress)? finish,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? progress,
    TResult Function(double progress)? finish,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressState value) progress,
    required TResult Function(_FinishState value) finish,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgressState value)? progress,
    TResult? Function(_FinishState value)? finish,
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressState value)? progress,
    TResult Function(_FinishState value)? finish,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploadPaymentStateCopyWith<$Res> {
  factory $ImageUploadPaymentStateCopyWith(ImageUploadPaymentState value,
          $Res Function(ImageUploadPaymentState) then) =
      _$ImageUploadPaymentStateCopyWithImpl<$Res, ImageUploadPaymentState>;
}

/// @nodoc
class _$ImageUploadPaymentStateCopyWithImpl<$Res,
        $Val extends ImageUploadPaymentState>
    implements $ImageUploadPaymentStateCopyWith<$Res> {
  _$ImageUploadPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ProgressStateCopyWith<$Res> {
  factory _$$_ProgressStateCopyWith(
          _$_ProgressState value, $Res Function(_$_ProgressState) then) =
      __$$_ProgressStateCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress});
}

/// @nodoc
class __$$_ProgressStateCopyWithImpl<$Res>
    extends _$ImageUploadPaymentStateCopyWithImpl<$Res, _$_ProgressState>
    implements _$$_ProgressStateCopyWith<$Res> {
  __$$_ProgressStateCopyWithImpl(
      _$_ProgressState _value, $Res Function(_$_ProgressState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$_ProgressState(
      null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ProgressState implements _ProgressState {
  const _$_ProgressState(this.progress);

  @override
  final double progress;

  @override
  String toString() {
    return 'ImageUploadPaymentState.progress(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgressState &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgressStateCopyWith<_$_ProgressState> get copyWith =>
      __$$_ProgressStateCopyWithImpl<_$_ProgressState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) progress,
    required TResult Function(double progress) finish,
    required TResult Function() initial,
  }) {
    return progress(this.progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress)? progress,
    TResult? Function(double progress)? finish,
    TResult? Function()? initial,
  }) {
    return progress?.call(this.progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? progress,
    TResult Function(double progress)? finish,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this.progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressState value) progress,
    required TResult Function(_FinishState value) finish,
    required TResult Function(_Initial value) initial,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgressState value)? progress,
    TResult? Function(_FinishState value)? finish,
    TResult? Function(_Initial value)? initial,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressState value)? progress,
    TResult Function(_FinishState value)? finish,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _ProgressState implements ImageUploadPaymentState {
  const factory _ProgressState(final double progress) = _$_ProgressState;

  double get progress;
  @JsonKey(ignore: true)
  _$$_ProgressStateCopyWith<_$_ProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinishStateCopyWith<$Res> {
  factory _$$_FinishStateCopyWith(
          _$_FinishState value, $Res Function(_$_FinishState) then) =
      __$$_FinishStateCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress});
}

/// @nodoc
class __$$_FinishStateCopyWithImpl<$Res>
    extends _$ImageUploadPaymentStateCopyWithImpl<$Res, _$_FinishState>
    implements _$$_FinishStateCopyWith<$Res> {
  __$$_FinishStateCopyWithImpl(
      _$_FinishState _value, $Res Function(_$_FinishState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$_FinishState(
      null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_FinishState implements _FinishState {
  const _$_FinishState(this.progress);

  @override
  final double progress;

  @override
  String toString() {
    return 'ImageUploadPaymentState.finish(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinishState &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinishStateCopyWith<_$_FinishState> get copyWith =>
      __$$_FinishStateCopyWithImpl<_$_FinishState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) progress,
    required TResult Function(double progress) finish,
    required TResult Function() initial,
  }) {
    return finish(this.progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress)? progress,
    TResult? Function(double progress)? finish,
    TResult? Function()? initial,
  }) {
    return finish?.call(this.progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? progress,
    TResult Function(double progress)? finish,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this.progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressState value) progress,
    required TResult Function(_FinishState value) finish,
    required TResult Function(_Initial value) initial,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgressState value)? progress,
    TResult? Function(_FinishState value)? finish,
    TResult? Function(_Initial value)? initial,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressState value)? progress,
    TResult Function(_FinishState value)? finish,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class _FinishState implements ImageUploadPaymentState {
  const factory _FinishState(final double progress) = _$_FinishState;

  double get progress;
  @JsonKey(ignore: true)
  _$$_FinishStateCopyWith<_$_FinishState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ImageUploadPaymentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ImageUploadPaymentState.initial()';
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
    required TResult Function(double progress) progress,
    required TResult Function(double progress) finish,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress)? progress,
    TResult? Function(double progress)? finish,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? progress,
    TResult Function(double progress)? finish,
    TResult Function()? initial,
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
    required TResult Function(_ProgressState value) progress,
    required TResult Function(_FinishState value) finish,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProgressState value)? progress,
    TResult? Function(_FinishState value)? finish,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressState value)? progress,
    TResult Function(_FinishState value)? finish,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ImageUploadPaymentState {
  const factory _Initial() = _$_Initial;
}
