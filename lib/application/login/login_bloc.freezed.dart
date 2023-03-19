// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String v) emailChanged,
    required TResult Function(String v) passwordChanged,
    required TResult Function() togglePassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        submit,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String v)? emailChanged,
    TResult? Function(String v)? passwordChanged,
    TResult? Function()? togglePassword,
    TResult? Function(EmailAddress emailAddress, Password password)? submit,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String v)? emailChanged,
    TResult Function(String v)? passwordChanged,
    TResult Function()? togglePassword,
    TResult Function(EmailAddress emailAddress, Password password)? submit,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_TogglePassword value) togglePassword,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_TogglePassword value)? togglePassword,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_TogglePassword value)? togglePassword,
    TResult Function(_Submit value)? submit,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

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
    extends _$LoginEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginEvent.started'));
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
    required TResult Function(String v) emailChanged,
    required TResult Function(String v) passwordChanged,
    required TResult Function() togglePassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        submit,
    required TResult Function() logOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String v)? emailChanged,
    TResult? Function(String v)? passwordChanged,
    TResult? Function()? togglePassword,
    TResult? Function(EmailAddress emailAddress, Password password)? submit,
    TResult? Function()? logOut,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String v)? emailChanged,
    TResult Function(String v)? passwordChanged,
    TResult Function()? togglePassword,
    TResult Function(EmailAddress emailAddress, Password password)? submit,
    TResult Function()? logOut,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_TogglePassword value) togglePassword,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LogOut value) logOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_TogglePassword value)? togglePassword,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_TogglePassword value)? togglePassword,
    TResult Function(_Submit value)? submit,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String v});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = null,
  }) {
    return _then(_$_EmailChanged(
      null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged with DiagnosticableTreeMixin implements _EmailChanged {
  const _$_EmailChanged(this.v);

  @override
  final String v;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.emailChanged(v: $v)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.emailChanged'))
      ..add(DiagnosticsProperty('v', v));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.v, v) || other.v == v));
  }

  @override
  int get hashCode => Object.hash(runtimeType, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String v) emailChanged,
    required TResult Function(String v) passwordChanged,
    required TResult Function() togglePassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        submit,
    required TResult Function() logOut,
  }) {
    return emailChanged(v);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String v)? emailChanged,
    TResult? Function(String v)? passwordChanged,
    TResult? Function()? togglePassword,
    TResult? Function(EmailAddress emailAddress, Password password)? submit,
    TResult? Function()? logOut,
  }) {
    return emailChanged?.call(v);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String v)? emailChanged,
    TResult Function(String v)? passwordChanged,
    TResult Function()? togglePassword,
    TResult Function(EmailAddress emailAddress, Password password)? submit,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(v);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_TogglePassword value) togglePassword,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LogOut value) logOut,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_TogglePassword value)? togglePassword,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_TogglePassword value)? togglePassword,
    TResult Function(_Submit value)? submit,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements LoginEvent {
  const factory _EmailChanged(final String v) = _$_EmailChanged;

  String get v;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String v});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = null,
  }) {
    return _then(_$_PasswordChanged(
      null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged
    with DiagnosticableTreeMixin
    implements _PasswordChanged {
  const _$_PasswordChanged(this.v);

  @override
  final String v;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.passwordChanged(v: $v)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.passwordChanged'))
      ..add(DiagnosticsProperty('v', v));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.v, v) || other.v == v));
  }

  @override
  int get hashCode => Object.hash(runtimeType, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String v) emailChanged,
    required TResult Function(String v) passwordChanged,
    required TResult Function() togglePassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        submit,
    required TResult Function() logOut,
  }) {
    return passwordChanged(v);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String v)? emailChanged,
    TResult? Function(String v)? passwordChanged,
    TResult? Function()? togglePassword,
    TResult? Function(EmailAddress emailAddress, Password password)? submit,
    TResult? Function()? logOut,
  }) {
    return passwordChanged?.call(v);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String v)? emailChanged,
    TResult Function(String v)? passwordChanged,
    TResult Function()? togglePassword,
    TResult Function(EmailAddress emailAddress, Password password)? submit,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(v);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_TogglePassword value) togglePassword,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LogOut value) logOut,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_TogglePassword value)? togglePassword,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_TogglePassword value)? togglePassword,
    TResult Function(_Submit value)? submit,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements LoginEvent {
  const factory _PasswordChanged(final String v) = _$_PasswordChanged;

  String get v;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TogglePasswordCopyWith<$Res> {
  factory _$$_TogglePasswordCopyWith(
          _$_TogglePassword value, $Res Function(_$_TogglePassword) then) =
      __$$_TogglePasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TogglePasswordCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_TogglePassword>
    implements _$$_TogglePasswordCopyWith<$Res> {
  __$$_TogglePasswordCopyWithImpl(
      _$_TogglePassword _value, $Res Function(_$_TogglePassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TogglePassword
    with DiagnosticableTreeMixin
    implements _TogglePassword {
  const _$_TogglePassword();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.togglePassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginEvent.togglePassword'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TogglePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String v) emailChanged,
    required TResult Function(String v) passwordChanged,
    required TResult Function() togglePassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        submit,
    required TResult Function() logOut,
  }) {
    return togglePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String v)? emailChanged,
    TResult? Function(String v)? passwordChanged,
    TResult? Function()? togglePassword,
    TResult? Function(EmailAddress emailAddress, Password password)? submit,
    TResult? Function()? logOut,
  }) {
    return togglePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String v)? emailChanged,
    TResult Function(String v)? passwordChanged,
    TResult Function()? togglePassword,
    TResult Function(EmailAddress emailAddress, Password password)? submit,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (togglePassword != null) {
      return togglePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_TogglePassword value) togglePassword,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LogOut value) logOut,
  }) {
    return togglePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_TogglePassword value)? togglePassword,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return togglePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_TogglePassword value)? togglePassword,
    TResult Function(_Submit value)? submit,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (togglePassword != null) {
      return togglePassword(this);
    }
    return orElse();
  }
}

abstract class _TogglePassword implements LoginEvent {
  const factory _TogglePassword() = _$_TogglePassword;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailAddress emailAddress, Password password});
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_Submit>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$_Submit(
      null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_Submit with DiagnosticableTreeMixin implements _Submit {
  const _$_Submit(this.emailAddress, this.password);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.submit(emailAddress: $emailAddress, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.submit'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Submit &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      __$$_SubmitCopyWithImpl<_$_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String v) emailChanged,
    required TResult Function(String v) passwordChanged,
    required TResult Function() togglePassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        submit,
    required TResult Function() logOut,
  }) {
    return submit(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String v)? emailChanged,
    TResult? Function(String v)? passwordChanged,
    TResult? Function()? togglePassword,
    TResult? Function(EmailAddress emailAddress, Password password)? submit,
    TResult? Function()? logOut,
  }) {
    return submit?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String v)? emailChanged,
    TResult Function(String v)? passwordChanged,
    TResult Function()? togglePassword,
    TResult Function(EmailAddress emailAddress, Password password)? submit,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_TogglePassword value) togglePassword,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LogOut value) logOut,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_TogglePassword value)? togglePassword,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_TogglePassword value)? togglePassword,
    TResult Function(_Submit value)? submit,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements LoginEvent {
  const factory _Submit(
      final EmailAddress emailAddress, final Password password) = _$_Submit;

  EmailAddress get emailAddress;
  Password get password;
  @JsonKey(ignore: true)
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogOutCopyWith<$Res> {
  factory _$$_LogOutCopyWith(_$_LogOut value, $Res Function(_$_LogOut) then) =
      __$$_LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogOutCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LogOut>
    implements _$$_LogOutCopyWith<$Res> {
  __$$_LogOutCopyWithImpl(_$_LogOut _value, $Res Function(_$_LogOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogOut with DiagnosticableTreeMixin implements _LogOut {
  const _$_LogOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.logOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginEvent.logOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String v) emailChanged,
    required TResult Function(String v) passwordChanged,
    required TResult Function() togglePassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        submit,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String v)? emailChanged,
    TResult? Function(String v)? passwordChanged,
    TResult? Function()? togglePassword,
    TResult? Function(EmailAddress emailAddress, Password password)? submit,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String v)? emailChanged,
    TResult Function(String v)? passwordChanged,
    TResult Function()? togglePassword,
    TResult Function(EmailAddress emailAddress, Password password)? submit,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_TogglePassword value) togglePassword,
    required TResult Function(_Submit value) submit,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_TogglePassword value)? togglePassword,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_TogglePassword value)? togglePassword,
    TResult Function(_Submit value)? submit,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements LoginEvent {
  const factory _LogOut() = _$_LogOut;
}

/// @nodoc
mixin _$LoginState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get passwordVisibility => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<LoginFailure, LoginDto>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {EmailAddress email,
      Password password,
      bool passwordVisibility,
      bool isSubmitting,
      Option<Either<LoginFailure, LoginDto>> authFailureOrSuccessOption});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordVisibility = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordVisibility: null == passwordVisibility
          ? _value.passwordVisibility
          : passwordVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<LoginFailure, LoginDto>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress email,
      Password password,
      bool passwordVisibility,
      bool isSubmitting,
      Option<Either<LoginFailure, LoginDto>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordVisibility = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_LoginState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordVisibility: null == passwordVisibility
          ? _value.passwordVisibility
          : passwordVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<LoginFailure, LoginDto>>,
    ));
  }
}

/// @nodoc

class _$_LoginState with DiagnosticableTreeMixin implements _LoginState {
  const _$_LoginState(
      {required this.email,
      required this.password,
      required this.passwordVisibility,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final bool passwordVisibility;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<LoginFailure, LoginDto>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState(email: $email, password: $password, passwordVisibility: $passwordVisibility, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('passwordVisibility', passwordVisibility))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordVisibility, passwordVisibility) ||
                other.passwordVisibility == passwordVisibility) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password,
      passwordVisibility, isSubmitting, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final EmailAddress email,
      required final Password password,
      required final bool passwordVisibility,
      required final bool isSubmitting,
      required final Option<Either<LoginFailure, LoginDto>>
          authFailureOrSuccessOption}) = _$_LoginState;

  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  bool get passwordVisibility;
  @override
  bool get isSubmitting;
  @override
  Option<Either<LoginFailure, LoginDto>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
