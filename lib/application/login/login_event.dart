part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.emailChanged(String v) = _EmailChanged;
  const factory LoginEvent.passwordChanged(String v) = _PasswordChanged;
  const factory LoginEvent.togglePassword() = _TogglePassword;
  const factory LoginEvent.submit(EmailAddress emailAddress, Password password) = _Submit;
  const factory LoginEvent.logOut() = _LogOut;
}