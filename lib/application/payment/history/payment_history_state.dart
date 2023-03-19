part of 'payment_history_bloc.dart';

@freezed
class PaymentHistoryState with _$PaymentHistoryState {
  const factory PaymentHistoryState.initial() = _Initial;
  const factory PaymentHistoryState.loadInProgress() = _LoadInProgress;
  const factory PaymentHistoryState.loadSuccess(List<PaymentHistory> payment) =
      _LoadSuccess;
  const factory PaymentHistoryState.loadFailure(PaymentFailure failure) =
      _LoadFailure;
  const factory PaymentHistoryState.loadEmpty() = _LoadEmpty;
}
