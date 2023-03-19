part of 'presence_type_bloc.dart';

@freezed
class PresenceTypeEvent with _$PresenceTypeEvent {
  const factory PresenceTypeEvent.started() = _Started;
  const factory PresenceTypeEvent.watchType() = _WatchLoad;
  const factory PresenceTypeEvent.notReceived(
      Either<PresenceFailure, List<PresenceType>> failureOrType) = _NotReceived;
}
