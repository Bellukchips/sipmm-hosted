import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/auth_failure/auth_failure.dart';
import 'package:sipmm/infrastructure/auth/models/user/user_dto.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, UserDto>> checkAuth();
  Future<Either<AuthFailure, Unit>> loggedIn(String token, UserDto user);
  Future<Either<AuthFailure, Unit>> loggedOut();
}
