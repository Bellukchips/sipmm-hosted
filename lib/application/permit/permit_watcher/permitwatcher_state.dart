part of 'permitwatcher_bloc.dart';

@freezed
class PermitWatcherState with _$PermitWatcherState {
  const factory PermitWatcherState.initial() = _Initial;
  const factory PermitWatcherState.loadInProgress() = _LoadInProgress;
  const factory PermitWatcherState.loadSuccessPermitCount(PermitCount permit) =
      _LoadSuccessPermitCount;
  const factory PermitWatcherState.loadSuccess(List<Permit> permit) =
      _LoadSuccess;
  const factory PermitWatcherState.loadFailure(PermitFailure failure) =
      _LoadFailure;
  const factory PermitWatcherState.loadEmpty() = _LoadEmpty;
}
