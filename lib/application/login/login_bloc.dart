import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/core/value/login/value_object.dart';

import 'package:sipmm/domain/login/i_login_repository.dart';
import 'package:sipmm/infrastructure/login/models/login_dto.dart';

import '../../domain/core/failure/login_failure/login_failure.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginFacade _facade;
  LoginBloc(this._facade) : super(LoginState.initial()) {
    on<_Started>((event, emit) {
      emit(state.copyWith(
          email: EmailAddress(''),
          password: Password(''),
          passwordVisibility: false,
          authFailureOrSuccessOption: none(),
          isSubmitting: false));
    });
    on<_EmailChanged>((event, emit) {
      final email = EmailAddress(event.v);
      emit(state.copyWith(email: email));
    });
    on<_PasswordChanged>((event, emit) {
      final password = Password(event.v);
      emit(state.copyWith(password: password));
    });
    on<_TogglePassword>((event, emit) {
      emit(state.copyWith(passwordVisibility: !state.passwordVisibility));
    });
    on<_Submit>((event, emit) async {
      late Either<LoginFailure, LoginDto> failureOrSuccess;
      final isEmailValid = state.email.isValid();
      final isPasswordValid = state.password.isValid();

      if (isEmailValid && isPasswordValid) {
        emit(state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none()));

        failureOrSuccess =
            await _facade.login(email: state.email, password: state.password);
      }
      emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess)));
    });
  }
}
