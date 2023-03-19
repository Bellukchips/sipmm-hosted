part of 'save_payment_bloc.dart';

@freezed
class SavePaymentState with _$SavePaymentState {
  const factory SavePaymentState(
      {required PaymentForm form,
      required FileImageValue file,
      required List<int> bytesFile,
      required bool isSubmitted,
      required double progressUpload,
      required Option<Either<PaymentFailure, SavePayment>>
          paymentFailureOrSuccessOption}) = _SavePaymentState;
  factory SavePaymentState.initial() => SavePaymentState(
        form: PaymentForm.empty(),
        isSubmitted: false,
        progressUpload: 0,
        file: FileImageValue(File('')),
        paymentFailureOrSuccessOption: none(),
        bytesFile: [],
      );
}
