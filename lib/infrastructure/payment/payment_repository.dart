import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/infrastructure/payment/models/method_payment/payment_method_dto.dart';
import 'package:sipmm/domain/core/failure/payment_failure/payment_failure.dart';
import 'package:sipmm/domain/core/value/general/file_value_object.dart';
import 'package:sipmm/domain/payment/category_payment.dart';
import 'package:sipmm/domain/payment/i_payment_repository.dart';
import 'package:sipmm/domain/payment/payment_form.dart';
import 'package:sipmm/domain/payment/payment_history.dart';
import 'package:sipmm/domain/payment/payment_method.dart';
import 'package:sipmm/domain/payment/save_payment.dart';
import 'package:sipmm/infrastructure/payment/models/category_payment/category_payment_dto.dart';
import 'package:sipmm/infrastructure/payment/models/history_payment/history_payment_dto.dart';
import 'package:sipmm/infrastructure/payment/models/save_payment/save_payment_dto.dart';

@LazySingleton(as: IPaymentRepository)
class PaymentRepository implements IPaymentRepository {
  final Dio _network;
  PaymentRepository(
    this._network,
  );
  @override
  Future<Either<PaymentFailure, List<CategoryPayment>>>
      getCategoryPayment() async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final response = await _network.get('/app/payment/category');
      if (response.statusCode == 200) {
        var result = response.data['data'];
        if (result is List) {
          List<CategoryPayment> category = result
              .map((e) => CategoryPaymentDto.fromJson(e).toDomain())
              .whereType<CategoryPayment>()
              .toList();
          return right(category);
        }
      }
      if (response.statusCode == 401) {
        return left(const PaymentFailure.unauthenticated());
      }
      return left(const PaymentFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PaymentFailure.serverError());
      } else if (status == '401') {
        return left(const PaymentFailure.unauthenticated());
      } else {
        return left(PaymentFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<PaymentFailure, List<PaymentHistory>>> getHistoryPayment(
      int? idPayment, String? date) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final response = await _network.get('/app/payment/history',
          queryParameters: {"id_category": idPayment, "date": date});

      if (response.statusCode == 200) {
        var result = response.data['data']['payment'];
        if (result is List) {
          List<PaymentHistory> history = result
              .map((e) => HistoryPaymentDto.fromJson(e).toDomain())
              .whereType<PaymentHistory>()
              .toList();
          return right(history);
        }
      }
      if (response.statusCode == 401) {
        return left(const PaymentFailure.unauthenticated());
      }
      return left(const PaymentFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PaymentFailure.serverError());
      } else if (status == '401') {
        return left(const PaymentFailure.unauthenticated());
      } else {
        return left(PaymentFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<PaymentFailure, SavePayment>> savePaymentForMobile(
      PaymentForm form, FileImageValue path) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final type = form.type?.getOrCrash();
      final date = form.date_payment?.getOrCrash();
      final total = form.total?.getOrCrash();
      final img = path.filePath;

      /// save payment
      final response = await _network.post(
        '/app/payment/save',
        data: {"type": type, "date_payment": date, "total": total},
      );
      if (response.statusCode == 200) {
        var result = response.data['data']['payment'];
        final dataPayment = SavePaymentDto.fromJson(result).toDomain();

        ///upload image
        FormData formData = FormData.fromMap({
          'file': await MultipartFile.fromFile(img),
        });

        final imageUpload = await _network.post(
          '/app/payment/uploadPhoto/${dataPayment.id}',
          data: formData,
          onSendProgress: (sent, total) {
            final progress = sent / total;
            // getIt<ImageUploadPaymentBloc>()
            //     .add(ImageUploadPaymentEvent.progress(progress));
          },
        );
        if (imageUpload.statusCode != 200) {
          return left(const PaymentFailure.unauthenticated());
        }
        return right(dataPayment);
      }
      if (response.statusCode == 401) {
        return left(const PaymentFailure.unauthenticated());
      }
      return left(const PaymentFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PaymentFailure.serverError());
      } else if (status == '401') {
        return left(const PaymentFailure.unauthenticated());
      } else {
        return left(PaymentFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<PaymentFailure, List<PaymentMethod>>> getPaymentMethod() async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final response = await _network.get('/app/payment/categoryPayment');
      if (response.statusCode == 200) {
        var result = response.data['data']['category'];
        if (result is List) {
          List<PaymentMethod> method = result
              .map((e) => PaymentMethodDto.fromJson(e).toDomain())
              .whereType<PaymentMethod>()
              .toList();
          return right(method);
        }
        return left(const PaymentFailure.unexpected('Opps Error'));
      }
      if (response.statusCode == 401) {
        return left(const PaymentFailure.unauthenticated());
      }
      return left(const PaymentFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PaymentFailure.serverError());
      } else if (status == '401') {
        return left(const PaymentFailure.unauthenticated());
      } else {
        return left(PaymentFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<PaymentFailure, SavePayment>> savePaymentForWeb(
      PaymentForm form, List<int> file) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final type = form.type?.getOrCrash();
      final date = form.date_payment?.getOrCrash();
      final total = form.total?.getOrCrash();

      /// save payment
      final response = await _network.post(
        '/app/payment/save',
        data: {"type": type, "date_payment": date, "total": total},
      );
      if (response.statusCode == 200) {
        var result = response.data['data']['payment'];
        final dataPayment = SavePaymentDto.fromJson(result).toDomain();

        ///upload image
        FormData formData = FormData.fromMap({
          'file': MultipartFile.fromBytes(file,filename: 'img.png'),
        });

        final imageUpload = await _network.post(
          '/app/payment/uploadPhoto/${dataPayment.id}',
          data: formData,
          onSendProgress: (sent, total) {
            final progress = sent / total;
            // getIt<ImageUploadPaymentBloc>()
            //     .add(ImageUploadPaymentEvent.progress(progress));
          },
        );
        if (imageUpload.statusCode != 200) {
          return left(const PaymentFailure.unauthenticated());
        }
        return right(dataPayment);
      }
      if (response.statusCode == 401) {
        return left(const PaymentFailure.unauthenticated());
      }
      return left(const PaymentFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PaymentFailure.serverError());
      } else if (status == '401') {
        return left(const PaymentFailure.unauthenticated());
      } else {
        return left(PaymentFailure.unexpected(e.message));
      }
    }
  }
}
