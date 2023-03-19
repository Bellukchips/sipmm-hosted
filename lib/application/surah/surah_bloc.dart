import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:sipmm/domain/assessment/i_assessment_repository.dart';
import 'package:sipmm/domain/assessment/surah.dart';
import 'package:sipmm/domain/core/failure/assessment_failure/assessment_failure.dart';

part 'surah_bloc.freezed.dart';
part 'surah_event.dart';
part 'surah_state.dart';

@injectable
class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final IAssessmentRepository _repository;
  SurahBloc(
    this._repository,
  ) : super(const _Initial()) {
    on<_GetSurah>((event, emit) async {
      emit(const SurahState.loadInProgress());
      return (await _repository.getSurah()).fold(
          (l) => emit(SurahState.loadFailure(l)),
          (r) => emit(SurahState.loadSuccess(r)));
    });
    on<_NotReceived>((event, emit) async {
      return event.failureOrSurah.fold((l) => emit(SurahState.loadFailure(l)),
          (r) => emit(SurahState.loadSuccess(r)));
    });
  }
}
