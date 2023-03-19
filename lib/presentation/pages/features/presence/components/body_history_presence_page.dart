part of '../history_presence_page.dart';

class BodyHistoryPresencePage extends StatefulWidget {
  final int type;
  const BodyHistoryPresencePage({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  State<BodyHistoryPresencePage> createState() =>
      _BodyHistoryPresencePageState();
}

class _BodyHistoryPresencePageState extends State<BodyHistoryPresencePage> {
  ///
  ///
  ///
  DateTime selectedDate = DateTime.now();

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PresenceHistoryBloc>()
            ..add(
              PresenceHistoryEvent.watchHistoryPresence('', widget.type),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<PresenceCountBloc>()
            ..add(PresenceCountEvent.watchCount(widget.type)),
        ),
      ],
      child: BlocBuilder<PresenceHistoryBloc, PresenceHistoryState>(
        builder: (context, state) {
          return state.map(
            initial: (value) => const LoadingPage(isNotSubmit: true),
            loadInProgress: (value) => const LoadingPage(isNotSubmit: true),
            loadSuccess: (value) {
              return RefreshIndicator(
                onRefresh: () async {
                  // split
                  context.read<PresenceHistoryBloc>().add(
                      PresenceHistoryEvent.watchHistoryPresence(
                          '', widget.type));
                },
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          height: 200,
                          decoration: BoxDecoration(
                            color: ColorApp.primaryColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Filter Tanggal',
                                style: FontApp.primaryStyle,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      valueText: DateFormat.yMMMd()
                                          .format(selectedDate),
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
                                        context.read<PresenceHistoryBloc>().add(
                                            PresenceHistoryEvent
                                                .watchHistoryPresence(
                                                    date[0], widget.type));
                                      },
                                      style: FontApp.primaryStyle
                                          .copyWith(color: Colors.white),
                                      text: ButtonString.cari,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const CountPresence(),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: value.presence.length,
                          itemBuilder: (context, index) {
                            final data = value.presence[index];
                            return Container(
                              margin: EdgeInsets.only(
                                  top: index == 0 ? 20 : 0,
                                  bottom: (index == value.presence.length - 1)
                                      ? 100
                                      : 10),
                              child: ItemPresence(data: data),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            loadFailure: (value) {
              return RefreshIndicator(
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      CriticalFailureDisplayPresenceType(failure: value.failure)
                    ],
                  ),
                ),
                onRefresh: () async {},
              );
            },
            loadEmpty: (value) {
              return RefreshIndicator(
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        height: 200,
                        decoration: BoxDecoration(
                          color: ColorApp.primaryColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Filter Tanggal',
                              style: FontApp.primaryStyle,
                            ),
                            const SizedBox(
                              height: 10,
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
                                      // // split
                                      // split
                                      var date = selectedDate
                                          .toString()
                                          .split(RegExp(r'\s+'));
                                      context.read<PresenceHistoryBloc>().add(
                                          PresenceHistoryEvent
                                              .watchHistoryPresence(
                                                  date[0], widget.type));
                                    },
                                    style: FontApp.primaryStyle
                                        .copyWith(color: Colors.white),
                                    text: ButtonString.cari,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const CountPresence(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 200, child: ItemTypeEmpty()),
                  ],
                ),
                onRefresh: () async {
                  // split
                  context.read<PresenceHistoryBloc>().add(
                      PresenceHistoryEvent.watchHistoryPresence(
                          '', widget.type));
                },
              );
            },
          );
        },
      ),
    );
  }
}

class CountPresence extends StatelessWidget {
  const CountPresence({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PresenceCountBloc, PresenceCountState>(
      builder: (context, state) {
        return state.map(
            initial: (value) => const ShimmerText(height: 30),
            loadInProgress: (value) => const ShimmerText(height: 30),
            loadSuccess: (value) {
              return SizedBox(
                width: MediaQuery.of(context).size.width - 2 * 20 - 115 - 10,
                child: Text(
                  'Total Absen : ${value.presenceCount.total}',
                  style: FontApp.primaryStyle.copyWith(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
            loadFailure: (value) => SizedBox(
                  width: MediaQuery.of(context).size.width - 2 * 20 - 115 - 10,
                  child: Text(
                    value.failure.map(
                      unexpected: (value) => 'Error tidak diketahui',
                      serverError: (value) => 'Something went wrong',
                      unauthenticated: (value) =>
                          'Silahkan login kembali untuk memuat data',
                    ),
                    style: FontApp.primaryStyle.copyWith(color: Colors.black),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ));
      },
    );
  }
}
