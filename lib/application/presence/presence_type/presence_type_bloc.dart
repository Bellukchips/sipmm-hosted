import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:sipmm/domain/core/failure/presence_failure/presence_failure.dart';
import 'package:sipmm/domain/presence/i_presence_repository.dart';
import 'package:sipmm/domain/presence/presence_type.dart';

part 'presence_type_bloc.freezed.dart';
part 'presence_type_event.dart';
part 'presence_type_state.dart';

@injectable
class PresenceTypeBloc extends Bloc<PresenceTypeEvent, PresenceTypeState> {
  final IPresenceRepository _repository;
  PresenceTypeBloc(
    this._repository,
  ) : super(const _Initial()) {
    on<_WatchLoad>((event, emit) async {
      emit(const PresenceTypeState.loadInProgress());
      return (await _repository.getTypePresence())
          .fold((l) => emit(PresenceTypeState.loadFailure(l)), (r) {
        if (r.isEmpty) {
          emit(const PresenceTypeState.loadEmpty());
        } else {
          emit(PresenceTypeState.loadSuccess(r));
        }
      });
    });
    on<_NotReceived>((event, emit) async {
      return event.failureOrType.fold(
          (l) => emit(PresenceTypeState.loadFailure(l)),
          (r) => emit(PresenceTypeState.loadSuccess(r)));
    });
  }
}
