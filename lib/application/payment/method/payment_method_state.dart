part of 'payment_method_bloc.dart';

@freezed
class PaymentMethodState with _$PaymentMethodState {
  const factory PaymentMethodState.initial() = _Initial;
  const factory PaymentMethodState.loadInProgress() = _LoadInProgress;
  const factory PaymentMethodState.loadSuccess(List<PaymentMethod> payment) =
      _LoadSuccess;
  const factory PaymentMethodState.loadFailure(PaymentFailure failure) =
      _LoadFailure;
  const factory PaymentMethodState.loadEmpty() = _LoadEmpty;
}
