part of 'news_actor_bloc.dart';

@freezed
class NewsActorState with _$NewsActorState {
  const factory NewsActorState.initial() = _Initial;
  const factory NewsActorState.actionInProgress() = _ActionInProgress;
  const factory NewsActorState.failure() = _Failure;
  const factory NewsActorState.success() = _Success;
}
