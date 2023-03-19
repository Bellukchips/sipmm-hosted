part of 'save_payment_bloc.dart';

@freezed
class SavePaymentEvent with _$SavePaymentEvent {
  const factory SavePaymentEvent.started() = _Started;
  const factory SavePaymentEvent.typeChanged(int type) = _TypeChanged;
  const factory SavePaymentEvent.dateChanged(String date) = _DateChanged;
  const factory SavePaymentEvent.imageChangedMobile(File path) = _ImageChangedMobile;
  const factory SavePaymentEvent.imageChangedWeb(List<int> bytes) = _ImageChangedWeb;
  const factory SavePaymentEvent.totalChanged(String total) = _TotalChanged;
  const factory SavePaymentEvent.idPayment(int idPayment) = _IdPayment;
  const factory SavePaymentEvent.submittedMobile(
      PaymentForm form, FileImageValue pathImg) = _SubmitMobile;
  const factory SavePaymentEvent.submittedWeb(
      PaymentForm form, List<int> bytesFile) = _SubmitWeb;
}
