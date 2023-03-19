part of '../form_input_permit.dart';

class BodyFormInputPermit extends StatefulWidget {
  final Permit permit;
  final bool isEdit;
  const BodyFormInputPermit({
    Key? key,
    required this.permit,
    required this.isEdit,
  }) : super(key: key);

  @override
  State<BodyFormInputPermit> createState() => _BodyFormInputPermitState();
}

class _BodyFormInputPermitState extends State<BodyFormInputPermit> {
  @override
  void initState() {
    if (widget.isEdit) {
      context
          .read<PermitActorBloc>()
          .add(PermitActorEvent.idPermitChanged(widget.permit.id!));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PermitActorBloc, PermitActorState>(
      buildWhen: (previous, current) =>
          previous.isSubmitted != current.isSubmitted,
      listener: (context, state) {
        if (widget.isEdit) {
          state.permitFailureOrSuccessOption.fold(() {}, (either) {
            either.fold((l) {
              FlushbarHelper.createError(
                  message: l.map(
                unexpected: (value) => 'Unexpected Error',
                serverError: (value) => 'Something Went Wrong',
                unauthenticated: (value) => 'Unauthenticated',
              )).show(context);
              context.read<PermitActorBloc>().add(
                    PermitActorEvent.setFormUpdatedFail(
                      PermitForm(
                          title: SingleLineText(widget.permit.permit_type!),
                          description:
                              TextValueObject(widget.permit.description!),
                          date_permit: DateValue(widget.permit.permit_date!)),
                    ),
                  );
            }, (r) async {
              getIt<AppRouter>()
                  .replace(HomeRoute(selectMenu: MenuHome.perizinan));
            });
          });
        } else {
          state.permitFailureOrSuccessOption.fold(() {}, (either) {
            either.fold((l) {
              FlushbarHelper.createError(
                  message: l.map(
                unexpected: (value) => 'Unexpected Error',
                serverError: (value) => 'Something Went Wrong',
                unauthenticated: (value) => 'Unauthenticated',
              )).show(context);
              context
                  .read<PermitActorBloc>()
                  .add(const PermitActorEvent.started());
            }, (r) async {
              getIt<AppRouter>()
                  .replace(HomeRoute(selectMenu: MenuHome.perizinan));
            });
          });
        }
      },
      builder: (context, state) {
        return BlocBuilder<PermitActorBloc, PermitActorState>(
          builder: (context, state) {
            if (state.isSubmitted) {
              return LoadingPage(
                isSubmitted: state.isSubmitted,
                isNotSubmit: false,
              );
            }
            return Container(
              padding: const EdgeInsets.all(20),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child:
                          Text('Keterangan Izin', style: FontApp.primaryStyle),
                    ),
                    _TitleForm(permit: widget.permit),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text('Detail', style: FontApp.primaryStyle),
                    ),
                    _DescForm(permit: widget.permit),
                    const SizedBox(
                      height: 30,
                    ),
                    _DateForm(permit: widget.permit),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomElevationButton(
                      height: 52,
                      width: 300,
                      color: ColorApp.primaryColor,
                      onTap: () {
                        if (state.form.date_permit!.isValid() == false ||
                            state.form.title!.isValid() == false ||
                            state.form.description!.isValid() == false) {
                          FlushbarHelper.createInformation(
                                  message: 'Isi Semua Form')
                              .show(context);
                        } else {
                          if (widget.isEdit) {
                            context.read<PermitActorBloc>().add(
                                PermitActorEvent.updated(
                                    PermitForm(
                                        title: state.form.title,
                                        description: state.form.description,
                                        date_permit: state.form.date_permit),
                                    state.idPermit));
                          } else {
                            context.read<PermitActorBloc>().add(
                                PermitActorEvent.saved(PermitForm(
                                    title: state.form.title,
                                    description: state.form.description,
                                    date_permit: state.form.date_permit)));
                          }
                        }
                      },
                      style: FontApp.primaryStyle.copyWith(color: Colors.white),
                      text: ButtonString.simpanDanAjukan,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _DateForm extends StatefulWidget {
  final Permit permit;
  const _DateForm({
    Key? key,
    required this.permit,
  }) : super(key: key);

  @override
  State<_DateForm> createState() => _DateFormState();
}

class _DateFormState extends State<_DateForm> {
  DateTime selectedDate = DateTime.now();
  @override
  void initState() {
    var dateSplit = selectedDate.toString().split(RegExp(r'\s+'));
    context.read<PermitActorBloc>().add(PermitActorEvent.dateChanged(
        widget.permit.permit_date == ''
            ? dateSplit[0]
            : widget.permit.permit_date!));

    if (widget.permit.permit_date != '') {
      selectedDate = DateTime.parse(widget.permit.permit_date!);
    } else {
      selectedDate = DateTime.now();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InputDropdown(
      colorIcon: ColorApp.primaryColor,
      valueStyle: FontApp.primaryStyle,
      labelText: 'Tanggal',
      valueText: DateFormat.yMMMd().format(selectedDate),
      onPressed: () {
        UtilsApp.selectDate(context, (date) {
          var dateSplit = selectedDate.toString().split(RegExp(r'\s+'));
          setState(() {
            selectedDate = date;
          });

          context
              .read<PermitActorBloc>()
              .add(PermitActorEvent.dateChanged(dateSplit[0]));
        });
      },
    );
  }
}

class _DescForm extends StatefulWidget {
  final Permit permit;

  const _DescForm({
    Key? key,
    required this.permit,
  }) : super(key: key);

  @override
  State<_DescForm> createState() => _DescFormState();
}

class _DescFormState extends State<_DescForm> {
  @override
  void initState() {
    context.read<PermitActorBloc>().add(PermitActorEvent.descChanged(
        widget.permit.description == '' ? '' : widget.permit.description!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PermitActorBloc, PermitActorState>(
      builder: (context, state) {
        return TextFormField(
          initialValue:
              widget.permit.description == '' ? '' : widget.permit.description,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLength: TextValueObject.maxLength,
          maxLines: null,
          minLines: 5,
          decoration: InputDecoration(
            errorText: state.form.title!.value.fold(
                (l) => l.maybeMap(
                    orElse: () => null,
                    exceedingLength: (value) => 'Exceeding length ${value.max}',
                    empty: (value) => 'Cannot be empty',
                    multiline: (_) => 'Invalid Description'),
                (_) => null),
            hintText: 'Detail Izin',
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorApp.primaryColor),
            ),
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorApp.primaryColor),
            ),
          ),
          autocorrect: false,
          autofocus: true,
          validator: (value) => context
              .read<PermitActorBloc>()
              .state
              .form
              .description!
              .value
              .fold((l) {
            return l.maybeMap(
                exceedingLength: (value) => 'Exceeding length ${value.max}',
                empty: (value) => 'Cannot be empty',
                orElse: () => null,
                singleLine: (_) => 'Invalid Description');
          }, (r) => null),
          onChanged: (value) {
            context
                .read<PermitActorBloc>()
                .add(PermitActorEvent.descChanged(value));
          },
        );
      },
    );
  }
}

class _TitleForm extends StatefulWidget {
  final Permit permit;
  const _TitleForm({
    Key? key,
    required this.permit,
  }) : super(key: key);

  @override
  State<_TitleForm> createState() => _TitleFormState();
}

class _TitleFormState extends State<_TitleForm> {
  @override
  void initState() {
    context.read<PermitActorBloc>().add(PermitActorEvent.titleChanged(
        widget.permit.permit_type == '' ? '' : widget.permit.permit_type!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PermitActorBloc, PermitActorState>(
      builder: (context, state) {
        return TextFormField(
          initialValue:
              widget.permit.permit_type == '' ? '' : widget.permit.permit_type,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) =>
              context.read<PermitActorBloc>().state.form.title!.value.fold((l) {
            return l.maybeMap(
                exceedingLength: (value) => 'Exceeding length ${value.max}',
                empty: (value) => 'Cannot be empty',
                orElse: () => null,
                singleLine: (_) => 'Invalid Title');
          }, (r) => null),
          decoration: InputDecoration(
            errorText: state.form.title!.value.fold(
                (l) => l.maybeMap(
                    exceedingLength: (value) => 'Exceeding length ${value.max}',
                    empty: (value) => 'Cannot be empty',
                    orElse: () => null,
                    singleLine: (_) => 'Invalid Title'),
                (_) => null),
            hintText: 'Izin Untuk',
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorApp.primaryColor),
            ),
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorApp.primaryColor),
            ),
          ),
          autocorrect: false,
          autofocus: true,
          onChanged: (value) {
            context
                .read<PermitActorBloc>()
                .add(PermitActorEvent.titleChanged(value));
          },
        );
      },
    );
  }
}
