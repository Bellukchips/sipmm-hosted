part of 'payment_history_bloc.dart';

@freezed
class PaymentHistoryEvent with _$PaymentHistoryEvent {
  const factory PaymentHistoryEvent.started() = _Started;
  const factory PaymentHistoryEvent.watchHistoryPayment(int? id, String date) =
      _WatchHistoryPayment;
  const factory PaymentHistoryEvent.notReceived(
          Either<PaymentFailure, List<PaymentHistory>> failureOrHistory) =
      _NotReceived;
}
