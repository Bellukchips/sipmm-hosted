part of 'presence_count_bloc.dart';

@freezed
class PresenceCountEvent with _$PresenceCountEvent {
  const factory PresenceCountEvent.started() = _Started;
  const factory PresenceCountEvent.watchCount(int type) = _WatchCount;
  const factory PresenceCountEvent.notReceived(
      Either<PresenceFailure, PresenceCount> failureOrCount) = _NotReceived;
}
