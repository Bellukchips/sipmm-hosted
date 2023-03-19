import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/core/failure/payment_failure/payment_failure.dart';
import 'package:sipmm/domain/payment/i_payment_repository.dart';
import 'package:sipmm/domain/payment/payment_history.dart';

part 'payment_history_event.dart';
part 'payment_history_state.dart';
part 'payment_history_bloc.freezed.dart';

@injectable
class PaymentHistoryBloc
    extends Bloc<PaymentHistoryEvent, PaymentHistoryState> {
  final IPaymentRepository _repository;
  PaymentHistoryBloc(this._repository) : super(const _Initial()) {
    on<_WatchHistoryPayment>((event, emit) async {
      emit(const PaymentHistoryState.loadInProgress());
      return (await _repository.getHistoryPayment(event.id, event.date))
          .fold((l) => emit(PaymentHistoryState.loadFailure(l)), (r) {
        if (r.isEmpty) {
          emit(const PaymentHistoryState.loadEmpty());
        } else {
          emit(PaymentHistoryState.loadSuccess(r));
        }
      });
    });
    on<_NotReceived>((event, emit) async {
      return event.failureOrHistory.fold(
          (l) => emit(PaymentHistoryState.loadFailure(l)),
          (r) => emit(PaymentHistoryState.loadSuccess(r)));
    });
  }
}
