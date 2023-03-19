import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sipmm/domain/auth/i_auth_facade.dart';
import 'package:sipmm/domain/core/failure/auth_failure/auth_failure.dart';
import 'package:sipmm/infrastructure/auth/models/user/user_dto.dart';
import 'package:sipmm/shared/config.dart';

@LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthFacade {
  final SharedPreferences _sharedPreferences;
  final Dio _network;
  AuthRepository(this._sharedPreferences, this._network);

  @override
  Future<Either<AuthFailure, UserDto>> checkAuth() async {
    try {
      var token = _sharedPreferences.getString(Config.token);
      var user = _sharedPreferences.getString(Config.user);
      if (token != null) {
        return right(UserDto.fromJson(jsonDecode(user!)));
      }
      return left(const AuthFailure.failed('Unauthenticated'));
    } catch (e) {
      return left(AuthFailure.failed(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> loggedIn(String token, UserDto user) async {
    try {
      await _sharedPreferences.setString(Config.token, token);
      await _sharedPreferences.setString(
          Config.user, jsonEncode(user.toJson()));

      return right(unit);
    } catch (e) {
      return left(AuthFailure.failed(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> loggedOut() async {
    await Future.delayed(const Duration(milliseconds: 500));

    try {
      var response = await _network.post('/user/logout');
      if (response.statusCode == 200) {
        await _sharedPreferences.remove(Config.token);
        await _sharedPreferences.remove(Config.user);
        return right(unit);
      }
      if (response.statusCode != 200) {
        await _sharedPreferences.remove(Config.token);
        await _sharedPreferences.remove(Config.user);
        return right(unit);
      }
      var meta = response.data['meta'];
      if (meta['code'] == 500) {
        return left(const AuthFailure.failed('Something went wrong'));
      }
      return left(const AuthFailure.failed('Opps failed response'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        await _sharedPreferences.remove(Config.token);
        await _sharedPreferences.remove(Config.user);
        return left(const AuthFailure.failed('Something went wrong'));
      } else {
        await _sharedPreferences.remove(Config.token);
        await _sharedPreferences.remove(Config.user);
        return left(AuthFailure.failed(status));
      }
    }
  }
}
