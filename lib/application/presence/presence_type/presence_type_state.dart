part of 'presence_type_bloc.dart';

@freezed
class PresenceTypeState with _$PresenceTypeState {
  const factory PresenceTypeState.initial() = _Initial;
  const factory PresenceTypeState.loadInProgress() = _LoadInProgress;
  const factory PresenceTypeState.loadSuccess(List<PresenceType> type) = _LoadSuccess;
  const factory PresenceTypeState.loadFailure(PresenceFailure failure) = _LoadFailure;
  const factory PresenceTypeState.loadEmpty() = _LoadEmpty;
}
