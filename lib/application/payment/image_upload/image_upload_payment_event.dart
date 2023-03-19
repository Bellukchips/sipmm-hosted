part of 'image_upload_payment_bloc.dart';

@freezed
class ImageUploadPaymentEvent with _$ImageUploadPaymentEvent {
  const factory ImageUploadPaymentEvent.started() = _Started;
  const factory ImageUploadPaymentEvent.progress(double progress) = _Progress;
  const factory ImageUploadPaymentEvent.finish() = _Finish;

}
