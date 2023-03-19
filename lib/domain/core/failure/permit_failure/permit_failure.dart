import 'package:freezed_annotation/freezed_annotation.dart';
part 'permit_failure.freezed.dart';

@freezed
abstract class PermitFailure with _$PermitFailure {
  const factory PermitFailure.unexpected([String? error]) = _Unexpected;
  const factory PermitFailure.serverError() = _ServerError;
  const factory PermitFailure.unauthenticated() = _Unauthenticated;
}
