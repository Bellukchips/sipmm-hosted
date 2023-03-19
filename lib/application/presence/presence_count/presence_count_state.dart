part of 'presence_count_bloc.dart';

@freezed
class PresenceCountState with _$PresenceCountState {
  const factory PresenceCountState.initial() = _Initial;
  const factory PresenceCountState.loadInProgress() = _LoadInProgress;
  const factory PresenceCountState.loadSuccess(PresenceCount presenceCount) = _LoadSuccess;
  const factory PresenceCountState.loadFailure(PresenceFailure failure) = _LoadFailure;
}
