import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:sipmm/domain/core/failure/presence_failure/presence_failure.dart';
import 'package:sipmm/domain/presence/i_presence_repository.dart';
import 'package:sipmm/domain/presence/presence_count.dart';

part 'presence_count_bloc.freezed.dart';
part 'presence_count_event.dart';
part 'presence_count_state.dart';

@injectable
class PresenceCountBloc extends Bloc<PresenceCountEvent, PresenceCountState> {
  final IPresenceRepository _repository;
  PresenceCountBloc(
    this._repository,
  ) : super(const _Initial()) {
    on<_WatchCount>((event, emit) async {
      emit(const PresenceCountState.loadInProgress());
      return (await _repository.getCountPresence(event.type)).fold(
          (l) => emit(PresenceCountState.loadFailure(l)),
          (r) => emit(PresenceCountState.loadSuccess(r)));
    });
    on<_NotReceived>((event, emit) async {
      return emit(event.failureOrCount.fold(
          (l) => PresenceCountState.loadFailure(l),
          (r) => PresenceCountState.loadSuccess(r)));
    });
  }
}
