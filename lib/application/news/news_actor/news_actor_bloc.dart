import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/news/i_news_repository.dart';

part 'news_actor_event.dart';
part 'news_actor_state.dart';
part 'news_actor_bloc.freezed.dart';

@injectable
class NewsActorBloc extends Bloc<NewsActorEvent, NewsActorState> {
  final INewsRepository _repository;
  NewsActorBloc(this._repository) : super(const NewsActorState.initial()) {
    on<NewsActorEvent>((event, emit) async {
      emit(const NewsActorState.actionInProgress());
      final readNews = await _repository.readNews(id: event.id!);
      emit(readNews.fold((l) => const NewsActorState.failure(),
          (r) => const NewsActorState.success()));
    });
  }
}
