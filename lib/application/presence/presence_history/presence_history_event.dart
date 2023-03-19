part of 'presence_history_bloc.dart';

@freezed
class PresenceHistoryEvent with _$PresenceHistoryEvent {
  const factory PresenceHistoryEvent.started() = _Started;
  const factory PresenceHistoryEvent.watchHistoryPresence(String date, int type) = _WatchHistoryPresence;
  const factory PresenceHistoryEvent.notReceived(Either<PresenceFailure,List<PresenceHistory>> failureOrPresence) = _NotReceived;
}