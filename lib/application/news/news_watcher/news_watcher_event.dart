part of 'news_watcher_bloc.dart';

@freezed
class NewsWatcherEvent with _$NewsWatcherEvent {
  const factory NewsWatcherEvent.watchLatestNews() = _WatchLatestNews;
  const factory NewsWatcherEvent.watchOldNews() = _WatchOldNews;
  const factory NewsWatcherEvent.notReceived(
      Either<NewsFailure, List<News>> failureOrNot) = _NotReceived;
}
