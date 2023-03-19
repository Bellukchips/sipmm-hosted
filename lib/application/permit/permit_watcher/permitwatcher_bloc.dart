import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/core/failure/permit_failure/permit_failure.dart';
import 'package:sipmm/domain/permit/i_permit_repository.dart';
import 'package:sipmm/domain/permit/permit.dart';
import 'package:sipmm/domain/permit/permit_count.dart';

part 'permitwatcher_event.dart';
part 'permitwatcher_state.dart';
part 'permitwatcher_bloc.freezed.dart';

@injectable
class PermitWatcherBloc extends Bloc<PermitWatcherEvent, PermitWatcherState> {
  final IPermitRepository _repository;
  PermitWatcherBloc(this._repository)
      : super(const PermitWatcherState.initial()) {
    on<_WatchPermitCount>((event, emit) async {
      emit(const PermitWatcherState.loadInProgress());
      return (await _repository.getPermitCount())
          .fold((l) => emit(PermitWatcherState.loadFailure(l)), (r) {
        if (r.total == null) {
          emit(const PermitWatcherState.loadEmpty());
        } else {
          emit(PermitWatcherState.loadSuccessPermitCount(r));
        }
      });
    });
    on<_WatchPermitHistory>((event, emit) async {
      emit(const PermitWatcherState.loadInProgress());
      return (await _repository.getHistoryPermit(date: event.date))
          .fold((l) => emit(PermitWatcherState.loadFailure(l)), (r) {
        if (r.isEmpty) {
          emit(const PermitWatcherState.loadEmpty());
        } else {
          emit(PermitWatcherState.loadSuccess(r));
        }
      });
    });
    on<_NotReceivedPermitCount>((event, emit) {
      emit(event.failureOrPermit.fold(
        (l) => PermitWatcherState.loadFailure(l),
        (r) => PermitWatcherState.loadSuccessPermitCount(r),
      ));
    });
  }
}
