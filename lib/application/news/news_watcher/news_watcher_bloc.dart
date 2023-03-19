import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/core/failure/news_failure/news_failure.dart';
import 'package:sipmm/domain/news/i_news_repository.dart';
import 'package:sipmm/domain/news/news.dart';
import 'package:injectable/injectable.dart';

part 'news_watcher_event.dart';
part 'news_watcher_state.dart';
part 'news_watcher_bloc.freezed.dart';

@injectable
class NewsWatcherBloc extends Bloc<NewsWatcherEvent, NewsWatcherState> {
  final INewsRepository _repository;
  NewsWatcherBloc(this._repository) : super(const NewsWatcherState.initial()) {
    on<_WatchLatestNews>((event, emit) async {
      emit(const NewsWatcherState.loadInProgress());
      return (await _repository.getLatestNews())
          .fold((l) => emit(NewsWatcherState.loadFailure(l)), (r) {
        if (r.isEmpty) {
          emit(const NewsWatcherState.loadEmpty());
        } else {
          emit(NewsWatcherState.loadSuccess(r));
        }
      });
    });
    on<_WatchOldNews>((event, emit) async {
      emit(const NewsWatcherState.loadInProgress());
      return (await _repository.getOldNews())
          .fold((l) => emit(NewsWatcherState.loadFailure(l)), (r) {
        if (r.isEmpty) {
          emit(const NewsWatcherState.loadEmpty());
        } else {
          emit(NewsWatcherState.loadSuccess(r));
        }
      });
    });
    on<_NotReceived>((event, emit) {
      emit(event.failureOrNot.fold((l) => NewsWatcherState.loadFailure(l),
          (r) => NewsWatcherState.loadSuccess(r)));
    });
  }
}
