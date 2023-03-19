import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_failure.freezed.dart';

@freezed
abstract class LoginFailure with _$LoginFailure {
  const factory LoginFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory LoginFailure.failed([String? error]) = _Failed;
  const factory LoginFailure.invalidRequest() = _InvalidRequest;
}
