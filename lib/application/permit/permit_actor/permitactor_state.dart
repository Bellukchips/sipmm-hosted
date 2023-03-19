part of 'permitactor_bloc.dart';

@freezed
class PermitActorState with _$PermitActorState {
  const factory PermitActorState({
    required PermitForm form,
    required bool isSubmitted,
    required NumberValue idPermit,
    required Option<Either<PermitFailure, SavePermit>>
        permitFailureOrSuccessOption,
  }) = _PermitActorState;
  factory PermitActorState.initial() => PermitActorState(
    idPermit: NumberValue(0),
      form: PermitForm.empty(),
      isSubmitted: false,
      permitFailureOrSuccessOption: none());
}
