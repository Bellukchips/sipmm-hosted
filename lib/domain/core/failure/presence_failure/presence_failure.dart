import 'package:freezed_annotation/freezed_annotation.dart';
part 'presence_failure.freezed.dart';

@freezed
abstract class PresenceFailure with _$PresenceFailure {
  const factory PresenceFailure.unexpected([String? error]) = _Unexpected;
  const factory PresenceFailure.serverError() = _ServerError;
  const factory PresenceFailure.unauthenticated() = _Unauthenticated;
}
