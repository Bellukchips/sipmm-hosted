import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/core/failure/schedule_failure/schedule_failure.dart';
import 'package:sipmm/domain/schedule/category_schedule.dart';
import 'package:sipmm/domain/schedule/i_schedule_repository.dart';

part 'category_schedule_event.dart';
part 'category_schedule_state.dart';
part 'category_schedule_bloc.freezed.dart';

@injectable
class CategoryScheduleBloc
    extends Bloc<CategoryScheduleEvent, CategoryScheduleState> {
  final IScheduleRepository _repository;
  CategoryScheduleBloc(this._repository) : super(const _Initial()) {
    on<_WatchCategory>((event, emit) async {
      emit(const CategoryScheduleState.loadInProgress());
      return (await _repository.getCategorySchedule())
          .fold((l) => emit(CategoryScheduleState.loadFailure(l)), (r) {
        if (r.isEmpty) {
          emit(const CategoryScheduleState.loadEmpty());
        } else {
          emit(CategoryScheduleState.loadCategory(r));
        }
      });
    });
    on<_NotReceivedSchhedule>((event, emit) async {
      return event.failureOrSchedule.fold(
          (l) => emit(CategoryScheduleState.loadFailure(l)),
          (r) => emit(CategoryScheduleState.loadCategory(r)));
    });
  }
}
