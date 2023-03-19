import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:sipmm/domain/payment/i_payment_repository.dart';
import 'package:sipmm/domain/payment/payment_method.dart';

import '../../../domain/core/failure/payment_failure/payment_failure.dart';

part 'payment_method_bloc.freezed.dart';
part 'payment_method_event.dart';
part 'payment_method_state.dart';

@injectable
class PaymentMethodBloc extends Bloc<PaymentMethodEvent, PaymentMethodState> {
  final IPaymentRepository _repository;
  PaymentMethodBloc(
    this._repository,
  ) : super(const _Initial()) {
    on<_GetPaymentMethod>((event, emit) async {
      emit(const PaymentMethodState.loadInProgress());
      return (await _repository.getPaymentMethod())
          .fold((l) => emit(PaymentMethodState.loadFailure(l)), (r) {
        if (r.isEmpty) {
          emit(const PaymentMethodState.loadEmpty());
        } else {
          emit(PaymentMethodState.loadSuccess(r));
        }
      });
    });
    on<_NotReceived>((event, emit) async {
      return event.failureOrMethod
          .fold((l) => emit(PaymentMethodState.loadFailure(l)), (r) {
        if (r.isEmpty) {
          emit(const PaymentMethodState.loadEmpty());
        } else {
          emit(PaymentMethodState.loadSuccess(r));
        }
      });
    });
  }
}
