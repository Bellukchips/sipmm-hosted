import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_failure.freezed.dart';

@freezed
abstract class PaymentFailure with _$PaymentFailure {
  const factory PaymentFailure.unexpected([String? error]) = _Unexpected;
  const factory PaymentFailure.serverError() = _ServerError;
  const factory PaymentFailure.unauthenticated() = _Unauthenticated;
}
