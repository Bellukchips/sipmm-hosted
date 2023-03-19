import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/core/failure/schedule_failure/schedule_failure.dart';

import 'package:sipmm/domain/schedule/i_schedule_repository.dart';

import '../../domain/schedule/schedule.dart';

part 'schedule_watcher_event.dart';
part 'schedule_watcher_state.dart';
part 'schedule_watcher_bloc.freezed.dart';

@injectable
class ScheduleWatcherBloc
    extends Bloc<ScheduleWatcherEvent, ScheduleWatcherState> {
  final IScheduleRepository _repository;
  ScheduleWatcherBloc(this._repository)
      : super(const ScheduleWatcherState.initial()) {
    on<_WatchSchedule>((event, emit) async {
      emit(const ScheduleWatcherState.loadInProgress());
      return (await _repository.getSchedule(
              category: event.category, day: event.day))
          .fold((l) => emit(ScheduleWatcherState.loadFailure(l)), (r) {
        if (r.isEmpty) {
          emit(const ScheduleWatcherState.loadEmpty());
        } else {
          emit(ScheduleWatcherState.loadSchedule(r));
        }
      });
    });

    on<_NotReceivedSchhedule>((event, emit) async {
      emit(event.failureOrSchedule.fold(
          (l) => ScheduleWatcherState.loadFailure(l),
          ((r) => ScheduleWatcherState.loadSchedule(r))));
    });
  }
}
