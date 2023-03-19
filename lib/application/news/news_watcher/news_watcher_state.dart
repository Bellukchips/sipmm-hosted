part of 'news_watcher_bloc.dart';

@freezed
class NewsWatcherState with _$NewsWatcherState {
  const factory NewsWatcherState.initial() = _Initial;
  const factory NewsWatcherState.loadInProgress() = _LoadInProgress;
  const factory NewsWatcherState.loadSuccess(List<News> news) = _LoadSuccess;
  const factory NewsWatcherState.loadFailure(NewsFailure failure) = _LoadFailure;
  const factory NewsWatcherState.loadEmpty() = _LoadEmpty;
}
