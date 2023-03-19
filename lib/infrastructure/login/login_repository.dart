import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/login_failure/login_failure.dart';
import 'package:sipmm/domain/login/i_login_repository.dart';
import 'package:sipmm/infrastructure/login/models/login_dto.dart';
import 'package:sipmm/domain/core/value/login/value_object.dart';

@LazySingleton(as: ILoginFacade)
class LoginRepository implements ILoginFacade {
  final Dio _network;

  LoginRepository(this._network);
  @override
  Future<Either<LoginFailure, LoginDto>> login(
      {required EmailAddress email, required Password password}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      final emailAddressStr = email.getOrCrash();
      final passwordStr = password.getOrCrash();
      var user = await _network.post('/user/login',
          data: {'email': emailAddressStr, 'password': passwordStr});
      if (user.statusCode != 200) {
        return left(const LoginFailure.failed('Opps failed response'));
      }
      var meta = user.data['meta'];
      if (meta['code'] == 401) {
        return left(const LoginFailure.invalidEmailAndPasswordCombination());
      }
      if (meta['code'] == 500) {
        return left(const LoginFailure.failed('Something went wrong'));
      }
      if (meta['code'] == 422) {
        return left(const LoginFailure.invalidRequest());
      }
      return right(LoginDto.fromJson(user.data['data']));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '401') {
        return left(const LoginFailure.invalidEmailAndPasswordCombination());
      } else if (status == '500') {
        return left(const LoginFailure.failed('Something went wrong'));
      } else if (status == '422') {
        return left(const LoginFailure.invalidRequest());
      } else {
        return left(LoginFailure.failed(status));
      }
    }
  }
}
