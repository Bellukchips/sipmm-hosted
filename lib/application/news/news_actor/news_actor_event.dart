part of 'news_actor_bloc.dart';

@freezed
class NewsActorEvent with _$NewsActorEvent {
  const factory NewsActorEvent.readNews(int? id) = _ReadNews;
}