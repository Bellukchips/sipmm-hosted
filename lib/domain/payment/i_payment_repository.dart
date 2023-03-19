import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/payment_failure/payment_failure.dart';
import 'package:sipmm/domain/core/value/general/file_value_object.dart';
import 'package:sipmm/domain/payment/category_payment.dart';
import 'package:sipmm/domain/payment/payment_form.dart';
import 'package:sipmm/domain/payment/payment_history.dart';
import 'package:sipmm/domain/payment/payment_method.dart';
import 'package:sipmm/domain/payment/save_payment.dart';

abstract class IPaymentRepository {
  Future<Either<PaymentFailure, List<PaymentHistory>>> getHistoryPayment(
      int? idPayment, String? date);
  Future<Either<PaymentFailure, List<CategoryPayment>>> getCategoryPayment();
  Future<Either<PaymentFailure, SavePayment>> savePaymentForMobile(
    PaymentForm form,
    FileImageValue path,
  );
  Future<Either<PaymentFailure, SavePayment>> savePaymentForWeb(
      PaymentForm form, List<int> file);
  Future<Either<PaymentFailure, List<PaymentMethod>>> getPaymentMethod();
}
