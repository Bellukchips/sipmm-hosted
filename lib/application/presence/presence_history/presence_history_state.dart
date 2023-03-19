part of 'presence_history_bloc.dart';

@freezed
class PresenceHistoryState with _$PresenceHistoryState {
  const factory PresenceHistoryState.initial() = _Initial;
  const factory PresenceHistoryState.loadInProgress() = _LoadInProgress;
  const factory PresenceHistoryState.loadSuccess(List<PresenceHistory> presence) = _LoadSuccess;
  const factory PresenceHistoryState.loadFailure(PresenceFailure failure) = _LoadFailure;
  const factory PresenceHistoryState.loadEmpty() = _LoadEmpty;
}
