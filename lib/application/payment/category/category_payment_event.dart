part of 'category_payment_bloc.dart';

@freezed
class CategoryPaymentEvent with _$CategoryPaymentEvent {
  const factory CategoryPaymentEvent.started() = _Started;
  const factory CategoryPaymentEvent.getCategoryPayment() = _GetCategoryPayment;
  const factory CategoryPaymentEvent.notReceived(
          Either<PaymentFailure, List<CategoryPayment>> failureOrCategory) =
      _NotReceived;
}
