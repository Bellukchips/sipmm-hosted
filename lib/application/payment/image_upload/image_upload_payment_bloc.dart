import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'image_upload_payment_event.dart';
part 'image_upload_payment_state.dart';
part 'image_upload_payment_bloc.freezed.dart';

@injectable
class ImageUploadPaymentBloc
    extends Bloc<ImageUploadPaymentEvent, ImageUploadPaymentState> {
  ImageUploadPaymentBloc() : super(const ImageUploadPaymentState.initial()) {
    on<ImageUploadPaymentEvent>((event, emit) async {
      event.map(
        started: (_) => emit(const ImageUploadPaymentState.initial()),
        progress: (progressEvent) {
          emit(ImageUploadPaymentState.progress(progressEvent.progress));
          progress = progressEvent.progress;
        },
        finish: (value) {
          print('PROGRESSS : $progress');
          emit(ImageUploadPaymentState.finish(progress));
        },
      );
    });
    // on<_GetProgress>((event, emit) async {});
  }
  double progress = 0;
}
