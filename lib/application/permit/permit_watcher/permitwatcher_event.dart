part of 'permitwatcher_bloc.dart';

@freezed
class PermitWatcherEvent with _$PermitWatcherEvent {
  const factory PermitWatcherEvent.watchPermitCount() = _WatchPermitCount;
  const factory PermitWatcherEvent.watchPermitHistory(String date) = _WatchPermitHistory;
  const factory PermitWatcherEvent.notReceivedPermitCount(Either<PermitFailure,PermitCount> failureOrPermit) =  _NotReceivedPermitCount;
  const factory PermitWatcherEvent.notReceivedPermit(Either<PermitFailure,List<PermitCount>> failureOrPermit) =  _NotReceivedPermit;
}