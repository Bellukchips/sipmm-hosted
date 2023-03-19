part of '../permit_page.dart';

class BodyPermitPage extends StatefulWidget {
  const BodyPermitPage({super.key});

  @override
  State<BodyPermitPage> createState() => _BodyPermitPageState();
}

class _BodyPermitPageState extends State<BodyPermitPage> {
  ///
  ///
  ///
  DateTime selectedDate = DateTime.now();

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt<PermitWatcherBloc>()
        ..add(const PermitWatcherEvent.watchPermitHistory('')),
      child: BlocBuilder<PermitWatcherBloc, PermitWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return const LoadingPage(
                isNotSubmit: true,
              );
            },
            initial: (value) => const LoadingPage(
              isNotSubmit: true,
            ),
            loadInProgress: (value) => const LoadingPage(
              isNotSubmit: true,
            ),
            loadFailure: (value) => RefreshIndicator(
              onRefresh: () async {
                context
                    .read<PermitWatcherBloc>()
                    .add(const PermitWatcherEvent.watchPermitHistory(''));
              },
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  children: [
                    CriticalFailureDisplayPermit(failure: value.failure),
                  ],
                ),
              ),
            ),
            loadSuccess: (value) {
              return SafeArea(
                child: RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<PermitWatcherBloc>()
                        .add(const PermitWatcherEvent.watchPermitHistory(''));
                  },
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    child: Column(
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
                                        context.read<PermitWatcherBloc>().add(
                                            PermitWatcherEvent
                                                .watchPermitHistory(date[0]));
                                      },
                                      style: FontApp.primaryStyle
                                          .copyWith(color: Colors.white),
                                      text: ButtonString.cari,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: value.permit.length,
                          itemBuilder: (context, index) {
                            final data = value.permit[index];
                            return Container(
                              margin: EdgeInsets.only(
                                  top: index == 0 ? 20 : 0,
                                  bottom: (index == value.permit.length - 1)
                                      ? 100
                                      : 0),
                              child: ItemPermit(
                                screen: screen,
                                permit: data,
                                onStartSlide: (permit) {
                                  getIt<AppRouter>().replace(
                                      FormInputPermitRoute(
                                          editedPermit: permit,
                                          isEdit: true,
                                          isHome: false));
                                },
                                onEndSlide: () {
                                  context
                                      .read<PermitActorBloc>()
                                      .add(PermitActorEvent.deleted(data.id!));
                                  context.read<PermitWatcherBloc>().add(
                                      const PermitWatcherEvent
                                          .watchPermitHistory(''));
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            loadEmpty: (value) => RefreshIndicator(
              onRefresh: () async {
                context
                    .read<PermitWatcherBloc>()
                    .add(const PermitWatcherEvent.watchPermitHistory(''));
              },
              child: ListView(
                shrinkWrap: true,
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
                                  // split
                                  var date = selectedDate
                                      .toString()
                                      .split(RegExp(r'\s+'));
                                  context.read<PermitWatcherBloc>().add(
                                      PermitWatcherEvent.watchPermitHistory(
                                          date[0]));
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
                  const Center(
                    child: SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: EmptyPermit()),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  List<String> data = ["asd", "asdasd", "asdasdas", "asdasd"];
}
