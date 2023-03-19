import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/core/failure/presence_failure/presence_failure.dart';
import 'package:sipmm/domain/presence/history_presence.dart';
import 'package:sipmm/domain/presence/i_presence_repository.dart';

part 'presence_history_event.dart';
part 'presence_history_state.dart';
part 'presence_history_bloc.freezed.dart';

@injectable
class PresenceHistoryBloc
    extends Bloc<PresenceHistoryEvent, PresenceHistoryState> {
  final IPresenceRepository _repository;
  PresenceHistoryBloc(this._repository) : super(const _Initial()) {
    on<_WatchHistoryPresence>((event, emit) async {
      emit(const PresenceHistoryState.loadInProgress());
      return (await _repository.getHistoryPresence(event.date, event.type))
          .fold((l) => emit(PresenceHistoryState.loadFailure(l)), (r) {
        if (r.isEmpty) {
          emit(const PresenceHistoryState.loadEmpty());
        } else {
          emit(PresenceHistoryState.loadSuccess(r));
        }
      });
    });
    on<_NotReceived>((event, emit) async {
      return emit(event.failureOrPresence.fold(
          (l) => PresenceHistoryState.loadFailure(l),
          (r) => PresenceHistoryState.loadSuccess(r)));
    });
  }
}
