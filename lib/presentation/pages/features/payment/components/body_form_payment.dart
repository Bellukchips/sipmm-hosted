part of '../form_payment_page.dart';

class BodyFormPayment extends StatefulWidget {
  const BodyFormPayment({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyFormPayment> createState() => _BodyFormPaymentState();
}

class _BodyFormPaymentState extends State<BodyFormPayment> {
  ///
  DateTime dateNow = DateTime.now();
  late PaymentMethod paymentMethod;
  String valueDropDown = '';

  ///
  @override
  void initState() {
    paymentMethod = PaymentMethod.empty();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SavePaymentBloc>()..add(const SavePaymentEvent.started()),
      child: BlocConsumer<SavePaymentBloc, SavePaymentState>(
        buildWhen: (previous, current) =>
            previous.isSubmitted != current.isSubmitted,
        builder: (context, state) {
          return BlocBuilder<SavePaymentBloc, SavePaymentState>(
            builder: (context, state) {
              if (state.isSubmitted) {
                return LoadingPage(
                  isSubmitted: state.isSubmitted,
                  isNotSubmit: false,
                  valueProgress: state.progressUpload,
                );
              }
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      InputDropdown(
                        labelText: 'Cari Pembayaran',
                        valueStyle: FontApp.primaryStyle,
                        valueText: valueDropDown,
                        onPressed: () {
                          UtilsApp.showBottomSheet(context,
                              child: BottomSheetPaymentMethod(
                            onTap: (data) {
                              setState(() {
                                valueDropDown =
                                    '${data.paymentName} / ${data.method}/ ${data.mediaPayment}/ ${formatCurrency.format(double.parse(data.total!))}';
                                paymentMethod = data;
                              });
                              Navigator.of(context).pop();
                            },
                          ));
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 170,
                        alignment: FractionalOffset.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: ColorApp.primaryColor.withOpacity(0.2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                'Nomor Pembayaran ${paymentMethod.paymentName ?? ''}'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                '${paymentMethod.method ?? 'Pilih Pembayaran dahulu'} (${paymentMethod.mediaPayment ?? ''})'),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              '${paymentMethod.paymentNumber}',
                              style:
                                  FontApp.primaryStyle.copyWith(fontSize: 20),
                              maxLines: 1,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextButton(
                                onPressed: () {
                                  Clipboard.setData(ClipboardData(
                                          text:
                                              '${paymentMethod.paymentNumber}'))
                                      .then((_) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                'Copied to your clipboard !')));
                                  });
                                },
                                child: const Text('Copy To Clipboard'))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(Strings.inputTotal),
                      const SizedBox(
                        height: 15,
                      ),
                      const _TotalForm(),
                      const SizedBox(
                        height: 20,
                      ),
                      const ImageFormPayment(),
                      const SizedBox(
                        height: 20,
                      ),
                      // Text('${state.progressUpload}'),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomElevationButton(
                        height: 52,
                        width: 300,
                        color: ColorApp.primaryColor,
                        onTap: () {
                          var valueInput =
                              int.parse(state.form.total!.getOrCrash());
                          var valuePayment = int.parse(paymentMethod.total!);

                          if (valueDropDown == '') {
                            FlushbarHelper.createInformation(
                                    message: 'Pilih pembayaran')
                                .show(context);
                          } else if (valueInput > valuePayment) {
                            FlushbarHelper.createError(
                                    message:
                                        'Nilai yang dimasukan lebih besar dari yang harus dibayarkan')
                                .show(context);
                          } else {
                            var dateSplit =
                                dateNow.toString().split(RegExp(r'\s+'));

                            context.read<SavePaymentBloc>().add(
                                SavePaymentEvent.dateChanged(dateSplit[0]));
                            // id payment
                            context.read<SavePaymentBloc>().add(
                                SavePaymentEvent.typeChanged(
                                    paymentMethod.id!));
                            // submitted
                            if (!kIsWeb) {
                              if (state.file.isValid() == false) {
                                FlushbarHelper.createInformation(
                                        message: 'Upload bukti pembayaran')
                                    .show(context);
                              }
                              context.read<SavePaymentBloc>().add(
                                  SavePaymentEvent.submittedMobile(
                                      PaymentForm(
                                          date_payment: state.form.date_payment,
                                          total: state.form.total,
                                          type: state.form.type),
                                      state.file));
                            } else {
                              context.read<SavePaymentBloc>().add(
                                  SavePaymentEvent.submittedWeb(
                                      PaymentForm(
                                          date_payment: state.form.date_payment,
                                          total: state.form.total,
                                          type: state.form.type),
                                      state.bytesFile));
                            }
                          }
                        },
                        style:
                            FontApp.primaryStyle.copyWith(color: Colors.white),
                        text: ButtonString.simpandanUpload,
                      ),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        listener: (context, state) {
          state.paymentFailureOrSuccessOption.fold(() {}, (either) {
            either.fold((l) {
              FlushbarHelper.createError(
                message: l.map(
                  unexpected: (value) => 'Unexpected Error',
                  serverError: (value) => 'Something Went Wrong',
                  unauthenticated: (value) => 'Unauthenticated',
                ),
              ).show(context);
              context
                  .read<SavePaymentBloc>()
                  .add(const SavePaymentEvent.started());
            }, (r) async {
              FlushbarHelper.createSuccess(
                  message: 'Berhasil melakukan pembayaran');
              await Future.delayed(
                const Duration(milliseconds: 500),
                () {
                  getIt<AppRouter>()
                      .replace(HomeRoute(selectMenu: MenuHome.pembayaran));
                },
              );
            });
          });
        },
      ),
    );
  }
}

class ImageFormPayment extends StatefulWidget {
  const ImageFormPayment({super.key});

  @override
  State<ImageFormPayment> createState() => _ImageFormPaymentState();
}

class _ImageFormPaymentState extends State<ImageFormPayment> {
  XFile? selectImage;
  List<PlatformFile>? _paths;
  Uint8List? bytes;
  WebFileModel? webFileModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavePaymentBloc, SavePaymentState>(
      builder: (context, state) {
        return ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType ==
                DeviceScreenType.desktop) {
              return _paths == null
                  ? Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.rectangle,
                      ),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        alignment: FractionalOffset.center,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: () async {
                            _paths = await UtilsApp.pickFileForWeb();
                            setState(() {});
                            if (_paths != null) {
                              setState(() {
                                bytes = _paths!.first.bytes;
                              });
                              // ignore: use_build_context_synchronously
                              context.read<SavePaymentBloc>().add(
                                  SavePaymentEvent.imageChangedWeb(bytes!));
                            }
                          },
                          child: Container(
                            height: 50,
                            width: 180,
                            alignment: FractionalOffset.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: ColorApp.primaryColor),
                            child: Text(
                              Strings.uploadBuktiPembayaran,
                              style: FontApp.primaryStyle
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: MemoryImage(_paths!.first.bytes!),
                            fit: BoxFit.cover),
                        shape: BoxShape.rectangle,
                      ),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        alignment: FractionalOffset.center,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: () async {
                            _paths = await UtilsApp.pickFileForWeb();
                            setState(() {});
                            if (_paths != null) {
                              setState(() {
                                bytes = _paths!.first.bytes;
                              });
                              // ignore: use_build_context_synchronously
                              context.read<SavePaymentBloc>().add(
                                  SavePaymentEvent.imageChangedWeb(bytes!));
                            }
                          },
                          child: Container(
                            height: 50,
                            width: 180,
                            alignment: FractionalOffset.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: ColorApp.primaryColor),
                            child: Text(
                              Strings.uploadBuktiPembayaran,
                              style: FontApp.primaryStyle
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    );
            } else {
              if (!kIsWeb) {
                return selectImage == null
                    ? Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          alignment: FractionalOffset.center,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                          ),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            onPressed: () async {
                              selectImage =
                                  await UtilsApp.pickImageFromGallery();
                              setState(() {
                                //update UI
                              });
                              if (selectImage != null) {
                                // ignore: use_build_context_synchronously
                                context.read<SavePaymentBloc>().add(
                                    SavePaymentEvent.imageChangedMobile(
                                        File(selectImage!.path)));
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 180,
                              alignment: FractionalOffset.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorApp.primaryColor),
                              child: Text(
                                Strings.uploadBuktiPembayaran,
                                style: FontApp.primaryStyle
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: FileImage(File(selectImage!.path)),
                              fit: BoxFit.cover),
                          shape: BoxShape.rectangle,
                        ),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          alignment: FractionalOffset.center,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                          ),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            onPressed: () async {
                              selectImage =
                                  await UtilsApp.pickImageFromGallery();
                              setState(() {
                                //update UI
                              });
                              if (selectImage != null) {
                                // ignore: use_build_context_synchronously
                                context.read<SavePaymentBloc>().add(
                                    SavePaymentEvent.imageChangedMobile(
                                        File(selectImage!.path)));
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 180,
                              alignment: FractionalOffset.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorApp.primaryColor),
                              child: Text(
                                Strings.uploadBuktiPembayaran,
                                style: FontApp.primaryStyle
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      );
              } else {
                return webFileModel == null
                    ? Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          alignment: FractionalOffset.center,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                          ),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            onPressed: () async {
                              webFileModel = await UtilsApp.pickWebFileModel();
                              setState(() {
                                //update UI
                                final imageBase64 = webFileModel!.path
                                    .replaceFirst(
                                        RegExp(r'data:image/[^;]+;base64,'),
                                        '');
                                bytes = base64Decode(imageBase64);
                              });
                              if (webFileModel != null) {
                                // ignore: use_build_context_synchronously
                                context.read<SavePaymentBloc>().add(
                                    SavePaymentEvent.imageChangedWeb(bytes!));
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 180,
                              alignment: FractionalOffset.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorApp.primaryColor),
                              child: Text(
                                Strings.uploadBuktiPembayaran,
                                style: FontApp.primaryStyle
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: MemoryImage(bytes!), fit: BoxFit.cover),
                          shape: BoxShape.rectangle,
                        ),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          alignment: FractionalOffset.center,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                          ),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            onPressed: () async {
                              webFileModel = await UtilsApp.pickWebFileModel();
                              setState(() {
                                //update UI
                                final imageBase64 = webFileModel!.path
                                    .replaceFirst(
                                        RegExp(r'data:image/[^;]+;base64,'),
                                        '');
                                bytes = base64Decode(imageBase64);
                              });
                              if (webFileModel != null) {
                                // ignore: use_build_context_synchronously
                                context.read<SavePaymentBloc>().add(
                                    SavePaymentEvent.imageChangedWeb(bytes!));
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 180,
                              alignment: FractionalOffset.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorApp.primaryColor),
                              child: Text(
                                Strings.uploadBuktiPembayaran,
                                style: FontApp.primaryStyle
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      );
              }
            }
          },
        );
      },
    );
  }
}

class _TotalForm extends StatefulWidget {
  const _TotalForm({super.key});

  @override
  State<_TotalForm> createState() => _TotalFormState();
}

class _TotalFormState extends State<_TotalForm> {
  TextEditingController rupiahController = MoneyMaskedTextController(
    initialValue: 0,
    thousandSeparator: '.',
    precision: 3,
    leftSymbol: 'Rp ',
  );
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavePaymentBloc, SavePaymentState>(
      builder: (context, state) {
        return TextFormField(
          controller: rupiahController,
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) =>
              context.read<SavePaymentBloc>().state.form.total!.value.fold((l) {
            return l.maybeMap(
                exceedingLength: (value) => 'Exceeding length ${value.max}',
                empty: (value) => 'Cannot be empty',
                orElse: () => null,
                invalidCurrencyRupiah: (_) => 'Invalid Total');
          }, (r) => null),
          decoration: InputDecoration(
            errorText: state.form.total!.value.fold(
                (l) => l.maybeMap(
                    exceedingLength: (value) => 'Exceeding length ${value.max}',
                    empty: (value) => 'Cannot be empty',
                    orElse: () => null,
                    invalidCurrencyRupiah: (_) => 'Invalid Total'),
                (_) => null),
            hintText: 'Total pembayaran',
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
          autofocus: false,
          onChanged: (value) {
            context
                .read<SavePaymentBloc>()
                .add(SavePaymentEvent.totalChanged(value));
          },
        );
      },
    );
  }
}
