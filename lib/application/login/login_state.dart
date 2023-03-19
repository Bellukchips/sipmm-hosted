part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required EmailAddress email,
    required Password password,
    required bool passwordVisibility,
    required bool isSubmitting,
    required Option<Either<LoginFailure, LoginDto>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
      email: EmailAddress(''),
      password: Password(''),
      passwordVisibility: false,
      authFailureOrSuccessOption: none(),
      isSubmitting: false);
}
