part of 'category_payment_bloc.dart';

@freezed
class CategoryPaymentState with _$CategoryPaymentState {
  const factory CategoryPaymentState.initial() = _Initial;
  const factory CategoryPaymentState.loadInProgress() = _LoadInProgress;
  const factory CategoryPaymentState.loadSuccess(List<CategoryPayment> payment) = _LoadSuccess;
  const factory CategoryPaymentState.loadFailure(PaymentFailure failure) = _LoadFailure;
  const factory CategoryPaymentState.loadEmpty() = _LoadEmpty;
}
