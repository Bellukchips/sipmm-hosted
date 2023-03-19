part of 'image_upload_payment_bloc.dart';

@freezed
class ImageUploadPaymentState with _$ImageUploadPaymentState {
  const factory ImageUploadPaymentState.progress(double progress) =
      _ProgressState;
  const factory ImageUploadPaymentState.finish(double progress) =
      _FinishState;
  const factory ImageUploadPaymentState.initial() = _Initial;
 
}
