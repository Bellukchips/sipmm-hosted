part of '../history_payment_page.dart';

class BodyHistoryPaymentPage extends StatefulWidget {
  final int? idCategory;
  const BodyHistoryPaymentPage({
    Key? key,
    this.idCategory,
  }) : super(key: key);

  @override
  State<BodyHistoryPaymentPage> createState() => _BodyHistoryPaymentPageState();
}

class _BodyHistoryPaymentPageState extends State<BodyHistoryPaymentPage> {
  ///
  ///
  ///
  DateTime selectedDate = DateTime.now();

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentHistoryBloc>()
        ..add(
          PaymentHistoryEvent.watchHistoryPayment(widget.idCategory, ''),
        ),
      child: BlocBuilder<PaymentHistoryBloc, PaymentHistoryState>(
        builder: (context, state) {
          return state.map(
            initial: (value) => const LoadingPage(isNotSubmit: true),
            loadInProgress: (value) => const LoadingPage(isNotSubmit: true),
            loadSuccess: (value) {
              return RefreshIndicator(
                onRefresh: () async {
                  // split

                  context.read<PaymentHistoryBloc>().add(
                      PaymentHistoryEvent.watchHistoryPayment(
                          widget.idCategory, ''));
                },
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 130,
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: ColorApp.primaryColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Filter Tanggal',
                              style: FontApp.primaryStyle,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width -
                                      2 * 20 -
                                      115 -
                                      10,
                                  child: InputDropdown(
                                    colorIcon: ColorApp.primaryColor,
                                    valueStyle: FontApp.primaryStyle,
                                    labelText: 'Tanggal',
                                    valueText:
                                        DateFormat.yMMMd().format(selectedDate),
                                    onPressed: () {
                                      UtilsApp.selectDate(context, (date) {
                                        setState(() {
                                          selectedDate = date;
                                        });
                                      });
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: CustomElevationButton(
                                    height: 40,
                                    width: 70,
                                    color: ColorApp.primaryColor,
                                    onTap: () {
                                      // split
                                      var date = selectedDate
                                          .toString()
                                          .split(RegExp(r'\s+'));
                                      context.read<PaymentHistoryBloc>().add(
                                          PaymentHistoryEvent
                                              .watchHistoryPayment(
                                                  widget.idCategory, date[0]));
                                    },
                                    style: FontApp.primaryStyle
                                        .copyWith(color: Colors.white),
                                    text: ButtonString.cari,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Riwayat Pembayaran',
                          style: FontApp.primaryStyle.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: value.payment.length,
                          itemBuilder: (context, index) {
                            final data = value.payment[index];
                            return Container(
                              margin: EdgeInsets.only(
                                  top: index == 0 ? 20 : 0,
                                  bottom: (index == value.payment.length - 1)
                                      ? 100
                                      : 10),
                              child: ItemHistoryPayment(
                                data: data,
                                onTap: (history) {
                                  getIt<AppRouter>().replace(
                                      DetailPaymentRoute(
                                          history: history,
                                          idCategory: widget.idCategory!));
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            loadFailure: (value) => RefreshIndicator(
                onRefresh: () async {
                  context.read<PaymentHistoryBloc>().add(
                      PaymentHistoryEvent.watchHistoryPayment(
                          widget.idCategory, ''));
                },
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    children: [
                      CriticalFailureDisplayPayment(failure: value.failure)
                    ],
                  ),
                )),
            loadEmpty: (value) {
              return RefreshIndicator(
                  onRefresh: () async {
                    context.read<PaymentHistoryBloc>().add(
                        PaymentHistoryEvent.watchHistoryPayment(
                            widget.idCategory, ''));
                  },
                  child: ListView(
                    physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    children: [
                      Container(
                        height: 130,
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: ColorApp.primaryColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Filter Tanggal',
                              style: FontApp.primaryStyle,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width -
                                      2 * 20 -
                                      115 -
                                      10,
                                  child: InputDropdown(
                                    colorIcon: ColorApp.primaryColor,
                                    valueStyle: FontApp.primaryStyle,
                                    labelText: 'Tanggal',
                                    valueText:
                                        DateFormat.yMMMd().format(selectedDate),
                                    onPressed: () {
                                      UtilsApp.selectDate(context, (date) {
                                        setState(() {
                                          selectedDate = date;
                                        });
                                      });
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: CustomElevationButton(
                                    height: 40,
                                    width: 70,
                                    color: ColorApp.primaryColor,
                                    onTap: () {
                                      // split
                                      var date = selectedDate
                                          .toString()
                                          .split(RegExp(r'\s+'));
                                      context.read<PaymentHistoryBloc>().add(
                                          PaymentHistoryEvent
                                              .watchHistoryPayment(
                                                  widget.idCategory, date[0]));
                                    },
                                    style: FontApp.primaryStyle
                                        .copyWith(color: Colors.white),
                                    text: ButtonString.cari,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Riwayat Pembayaran',
                          style: FontApp.primaryStyle.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const ItemEmptyPayment(),
                    ],
                  ));
            },
          );
        },
      ),
    );
  }
}
