import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/auth/i_auth_facade.dart';
import 'package:sipmm/infrastructure/auth/models/user/user_dto.dart';
import 'package:sipmm/infrastructure/login/models/login_dto.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _facade;
  AuthBloc(this._facade) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        authCheck: () async {
          return (await _facade.checkAuth()).fold(
              (l) => emit(const AuthState.unauthenticated()),
              (r) => emit(AuthState.authenticated(r)));
        },
        loggedIn: (user) async {
          return (await _facade.loggedIn(user.access_token!, user.user!))
              .fold((l) => emit(const AuthState.unauthenticated()), (r) {
            emit(AuthState.authenticated(user.user!));
          });
        },
        loggedOut: () async {
          return (await _facade.loggedOut()).fold(
              (l) => emit(const AuthState.unauthenticated()),
              (r) => emit(const AuthState.unauthenticated()));
        },
      );
    });
  }
}
