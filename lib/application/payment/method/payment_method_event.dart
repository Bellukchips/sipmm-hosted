part of 'payment_method_bloc.dart';

@freezed
class PaymentMethodEvent with _$PaymentMethodEvent {
  const factory PaymentMethodEvent.started() = _Started;
  const factory PaymentMethodEvent.getPaymentMethod() = _GetPaymentMethod;
  const factory PaymentMethodEvent.notReceived(
          Either<PaymentFailure, List<PaymentMethod>> failureOrMethod) =
      _NotReceived;
}
