part of 'permitactor_bloc.dart';

@freezed
class PermitActorEvent with _$PermitActorEvent {
  const factory PermitActorEvent.started() = _Started;
  const factory PermitActorEvent.setFormUpdatedFail(PermitForm form) =
      _SetFormUpdatedFail;
  const factory PermitActorEvent.titleChanged(String title) = _TitleChanged;
  const factory PermitActorEvent.descChanged(String desc) = _DescChanged;
  const factory PermitActorEvent.dateChanged(String date) = _DateChanged;
  const factory PermitActorEvent.idPermitChanged(int idPermit) =
      _IdPermitChanged;
  const factory PermitActorEvent.saved(PermitForm form) = _Saved;
  const factory PermitActorEvent.updated(PermitForm form, NumberValue id) =
      _Updated;
  const factory PermitActorEvent.deleted(int id) = _Deleted;
}
