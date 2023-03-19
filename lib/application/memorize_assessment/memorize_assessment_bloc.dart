import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/assessment/i_assessment_repository.dart';
import 'package:sipmm/domain/assessment/memorize.dart';
import 'package:sipmm/domain/core/failure/assessment_failure/assessment_failure.dart';
import 'package:dartz/dartz.dart';
part 'memorize_assessment_event.dart';
part 'memorize_assessment_state.dart';
part 'memorize_assessment_bloc.freezed.dart';

@injectable
class MemorizeAssessmentBloc
    extends Bloc<MemorizeAssessmentEvent, MemorizeAssessmentState> {
  final IAssessmentRepository _repository;
  MemorizeAssessmentBloc(this._repository) : super(const _Initial()) {
    on<_WatchAssessment>((event, emit) async {
      emit(const MemorizeAssessmentState.loadInProgress());
      return (await _repository.getMemorizeScore(event.surah)).fold(
          (l) => emit(MemorizeAssessmentState.loadFailure(l)),
          (r) {
            if(r.isEmpty){
              emit(const MemorizeAssessmentState.loadEmpty());
            }else{
              emit(MemorizeAssessmentState.loadSuccess(r));
            }
          });
    });
    on<_NotReceived>((event, emit) async {
      return event.failureOrMemo.fold(
          (l) => emit(MemorizeAssessmentState.loadFailure(l)),
          (r) => emit(MemorizeAssessmentState.loadSuccess(r)));
    });
  }
}
