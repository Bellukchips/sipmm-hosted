import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/login_failure/login_failure.dart';
import 'package:sipmm/domain/core/value/login/value_object.dart';

import 'package:sipmm/infrastructure/login/models/login_dto.dart';

abstract class ILoginFacade {
  Future<Either<LoginFailure, LoginDto>> login(
      {required EmailAddress email, required Password password});
}
