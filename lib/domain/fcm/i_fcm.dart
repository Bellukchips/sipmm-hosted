import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/auth_failure/auth_failure.dart';

abstract class IFCM {
  Future<void> init();
  Future<void> requestPermissions();
  Future<Either<AuthFailure, Unit>> saveTokenFcm(String token);
}
