import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/core/failure/permit_failure/permit_failure.dart';
import 'package:sipmm/domain/core/value/general/date_value_object.dart';
import 'package:sipmm/domain/core/value/general/number_value_object.dart';
import 'package:sipmm/domain/core/value/general/single_line_text_value_object.dart';
import 'package:sipmm/domain/core/value/general/text_value_object.dart';
import 'package:sipmm/domain/permit/i_permit_repository.dart';
import 'package:sipmm/domain/permit/permit_form.dart';
import 'package:sipmm/domain/permit/save_permit.dart';

part 'permitactor_event.dart';
part 'permitactor_state.dart';
part 'permitactor_bloc.freezed.dart';

@injectable
class PermitActorBloc extends Bloc<PermitActorEvent, PermitActorState> {
  final IPermitRepository _repsitory;
  PermitActorBloc(this._repsitory) : super(PermitActorState.initial()) {
    on<_Started>((event, emit) {
      emit(state.copyWith(
          form: PermitForm.empty(),
          isSubmitted: false,
          permitFailureOrSuccessOption: none()));
    });
    on<_SetFormUpdatedFail>((event, emit) {
      emit(state.copyWith(
        isSubmitted: false,
        permitFailureOrSuccessOption: none(),
        form: PermitForm(
            title: state.form.title,
            description: state.form.description,
            date_permit: state.form.date_permit),
      ));
    });
    on<_TitleChanged>((event, emit) {
      final title = SingleLineText(event.title);
      emit(state.copyWith(form: state.form.copyWith(title: title)));
    });
    on<_DescChanged>((event, emit) {
      final desc = TextValueObject(event.desc);
      emit(state.copyWith(form: state.form.copyWith(description: desc)));
    });
    on<_DateChanged>((event, emit) {
      final date = DateValue(event.date);
      emit(state.copyWith(form: state.form.copyWith(date_permit: date)));
    });
    on<_IdPermitChanged>((event, emit) {
      final id = NumberValue(event.idPermit);
      emit(state.copyWith(idPermit: id));
    });

    on<_Saved>((event, emit) async {
      late Either<PermitFailure, SavePermit> failureOption;
      final titleValid = state.form.title?.isValid();
      final descValid = state.form.description?.isValid();
      final dateValid = state.form.date_permit?.isValid();

      if (titleValid! && descValid! && dateValid!) {
        emit(state.copyWith(
            isSubmitted: true, permitFailureOrSuccessOption: none()));
        failureOption = await _repsitory.savePermit(PermitForm(
            title: state.form.title,
            description: state.form.description,
            date_permit: state.form.date_permit));
      }
      emit(state.copyWith(
          isSubmitted: false,
          permitFailureOrSuccessOption: some(failureOption)));
    });
    on<_Updated>((event, emit) async {
      late Either<PermitFailure, SavePermit> failureOption;
      final titleValid = state.form.title?.isValid();
      final descValid = state.form.description?.isValid();
      final dateValid = state.form.date_permit?.isValid();
      final idValid = state.idPermit.isValid();

      if (titleValid! && descValid! && dateValid! && idValid) {
        emit(state.copyWith(
            isSubmitted: true, permitFailureOrSuccessOption: none()));
        failureOption = await _repsitory.updatePermit(
            PermitForm(
                title: state.form.title,
                description: state.form.description,
                date_permit: state.form.date_permit),
            state.idPermit);
      }
      emit(state.copyWith(
          isSubmitted: false,
          permitFailureOrSuccessOption: some(failureOption)));
    });
    on<_Deleted>((event, emit) async {
      late Either<PermitFailure, SavePermit> failureOption;
      final idValid = state.idPermit.isValid();

      if (idValid) {
        emit(state.copyWith(
            isSubmitted: true, permitFailureOrSuccessOption: none()));
        failureOption = await _repsitory.deletePermit(event.id);
      }
      emit(state.copyWith(
          isSubmitted: false,
          permitFailureOrSuccessOption: some(failureOption)));
    });
  }
}
