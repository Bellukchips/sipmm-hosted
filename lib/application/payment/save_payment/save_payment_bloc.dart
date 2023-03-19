import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:sipmm/domain/core/failure/payment_failure/payment_failure.dart';
import 'package:sipmm/domain/core/value/general/currency_rupiah_value_object.dart';
import 'package:sipmm/domain/core/value/general/date_value_object.dart';
import 'package:sipmm/domain/core/value/general/file_value_object.dart';
import 'package:sipmm/domain/core/value/general/number_value_object.dart';
import 'package:sipmm/domain/payment/i_payment_repository.dart';
import 'package:sipmm/domain/payment/payment_form.dart';
import 'package:sipmm/domain/payment/save_payment.dart';

part 'save_payment_bloc.freezed.dart';
part 'save_payment_event.dart';
part 'save_payment_state.dart';

@injectable
class SavePaymentBloc extends Bloc<SavePaymentEvent, SavePaymentState> {
  final IPaymentRepository _repository;
  SavePaymentBloc(
    this._repository,
  ) : super(SavePaymentState.initial()) {
    on<_Started>((event, emit) {
      emit(state.copyWith(
        form: PaymentForm.empty(),
        isSubmitted: false,
        file: FileImageValue(File('')),
        paymentFailureOrSuccessOption: none(),
      ));
    });
    on<_ImageChangedMobile>((event, emit) async {
      final img = FileImageValue(event.path);
      emit(state.copyWith(file: img));
    });
    on<_ImageChangedWeb>((event, emit) async {
      emit(state.copyWith(bytesFile: event.bytes));
    });
    on<_TypeChanged>((event, emit) async {
      final type = NumberValue(event.type);
      emit(state.copyWith(form: state.form.copyWith(type: type)));
    });
    on<_DateChanged>((event, emit) async {
      final date = DateValue(event.date);
      emit(state.copyWith(form: state.form.copyWith(date_payment: date)));
    });
    on<_TotalChanged>((event, emit) async {
      final total = CurrencyRupiahValue(event.total);
      emit(state.copyWith(form: state.form.copyWith(total: total)));
    });

    on<_SubmitMobile>((event, emit) async {
      late Either<PaymentFailure, SavePayment> failureOrPayment;
      final typeValid = state.form.type?.isValid();
      final dateValid = state.form.date_payment?.isValid();
      final totalValid = state.form.total?.isValid();
      final imgValid = state.file.isValid();

      if (typeValid! && dateValid! && totalValid! && imgValid) {
        emit(state.copyWith(
          isSubmitted: true,
          paymentFailureOrSuccessOption: none(),
        ));
        failureOrPayment = await _repository.savePaymentForMobile(
            PaymentForm(
                type: state.form.type,
                date_payment: state.form.date_payment,
                total: state.form.total),
            state.file);
      }
      emit(state.copyWith(
        isSubmitted: false,
        paymentFailureOrSuccessOption: some(failureOrPayment),
      ));
    });
    on<_SubmitWeb>((event, emit) async {
      late Either<PaymentFailure, SavePayment> failureOrPayment;
      final typeValid = state.form.type?.isValid();
      final dateValid = state.form.date_payment?.isValid();
      final totalValid = state.form.total?.isValid();
      if (typeValid! && dateValid! && totalValid!) {
        emit(state.copyWith(
          isSubmitted: true,
          paymentFailureOrSuccessOption: none(),
        ));
        failureOrPayment = await _repository.savePaymentForWeb(
            PaymentForm(
                type: state.form.type,
                date_payment: state.form.date_payment,
                total: state.form.total),
            state.bytesFile);
      }
      emit(state.copyWith(
        isSubmitted: false,
        paymentFailureOrSuccessOption: some(failureOrPayment),
      ));
    });
  }
}
