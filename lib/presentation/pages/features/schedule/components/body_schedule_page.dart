part of '../schedule_page.dart';

class BodySchedulePage extends StatefulWidget {
  const BodySchedulePage({
    super.key,
  });

  @override
  State<BodySchedulePage> createState() => _BodySchedulePageState();
}

class _BodySchedulePageState extends State<BodySchedulePage> {
  ///
  ///
  ///
  bool isSearch = false;
  String valueDropdown = '';
  String valueDropdownDay = '';

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorApp.primaryColor,
        child: const Icon(Icons.search),
        onPressed: () {
          setState(() {
            isSearch = !isSearch;
          });
        },
      ),
      body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<ScheduleWatcherBloc>()
                ..add(
                  ScheduleWatcherEvent.watchSchedule(
                      valueDropdown, valueDropdownDay),
                ),
            ),
          ],
          child: BlocBuilder<ScheduleWatcherBloc, ScheduleWatcherState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => Container(),
                initial: (value) => const LoadingPage(isNotSubmit: true),
                loadInProgress: (value) => const LoadingPage(isNotSubmit: true),
                loadEmpty: (value) => RefreshIndicator(
                  onRefresh: () async {
                    context.read<ScheduleWatcherBloc>().add(
                        ScheduleWatcherEvent.watchSchedule(
                            valueDropdown, valueDropdownDay));
                    context
                        .read<CategoryScheduleBloc>()
                        .add(const CategoryScheduleEvent.watchCategory());
                  },
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Visibility(
                          visible: isSearch,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            height: 200,
                            margin: const EdgeInsets.all(20),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: ColorApp.primaryColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Strings.filterJadwal,
                                    style: FontApp.primaryStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  InputDropdown(
                                    colorIcon: ColorApp.primaryColor,
                                    onPressed: () {
                                      UtilsApp.showBottomSheet(context,
                                          child: BottomSheetCategorySchedule(
                                        onTap: (value) {
                                          setState(() {
                                            valueDropdown = value;
                                          });
                                          Navigator.of(context).pop();
                                        },
                                      ));
                                    },
                                    labelText: 'Kategori (Opsional)',
                                    valueStyle: FontApp.primaryStyle,
                                    valueText: valueDropdown,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                2 * 20 -
                                                115 -
                                                10,
                                        child: InputDropdown(
                                          colorIcon: ColorApp.primaryColor,
                                          onPressed: () {
                                            UtilsApp.showBottomSheet(context,
                                                child: BottomSheetDay(
                                              onTap: (value) {
                                                setState(() {
                                                  valueDropdownDay = value;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ));
                                          },
                                          labelText: 'Hari (Opsional)',
                                          valueStyle: FontApp.primaryStyle,
                                          valueText: valueDropdownDay,
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
                                            context
                                                .read<ScheduleWatcherBloc>()
                                                .add(ScheduleWatcherEvent
                                                    .watchSchedule(
                                                        valueDropdown,
                                                        valueDropdownDay));
                                            setState(() {
                                              isSearch = false;
                                            });
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
                          ),
                        ),
                        const SizedBox(height: 200, child: ScheduleEmpty())
                      ],
                    ),
                  ),
                ),
                loadFailure: (value) => RefreshIndicator(
                  onRefresh: () async {
                    context.read<ScheduleWatcherBloc>().add(
                        ScheduleWatcherEvent.watchSchedule(
                            valueDropdown, valueDropdownDay));
                    context
                        .read<CategoryScheduleBloc>()
                        .add(const CategoryScheduleEvent.watchCategory());
                  },
                  child: Center(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics(),
                      ),
                      children: [
                        CritialFailureDisplaySchedule(failure: value.failure),
                      ],
                    ),
                  ),
                ),
                loadSchedule: (value) => RefreshIndicator(
                  onRefresh: () async {
                    context.read<ScheduleWatcherBloc>().add(
                        ScheduleWatcherEvent.watchSchedule(
                            valueDropdown, valueDropdownDay));
                    context
                        .read<CategoryScheduleBloc>()
                        .add(const CategoryScheduleEvent.watchCategory());
                  },
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Visibility(
                          visible: isSearch,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            height: 200,
                            margin: const EdgeInsets.all(20),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: ColorApp.primaryColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Strings.filterJadwal,
                                    style: FontApp.primaryStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  InputDropdown(
                                    colorIcon: ColorApp.primaryColor,
                                    onPressed: () {
                                      UtilsApp.showBottomSheet(context,
                                          child: BottomSheetCategorySchedule(
                                        onTap: (value) {
                                          setState(() {
                                            valueDropdown = value;
                                          });
                                          Navigator.of(context).pop();
                                        },
                                      ));
                                    },
                                    labelText: 'Kategori (Opsional)',
                                    valueStyle: FontApp.primaryStyle,
                                    valueText: valueDropdown,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                2 * 20 -
                                                115 -
                                                10,
                                        child: InputDropdown(
                                          colorIcon: ColorApp.primaryColor,
                                          onPressed: () {
                                            UtilsApp.showBottomSheet(context,
                                                child: BottomSheetDay(
                                              onTap: (value) {
                                                setState(() {
                                                  valueDropdownDay = value;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ));
                                          },
                                          labelText: 'Hari (Opsional)',
                                          valueStyle: FontApp.primaryStyle,
                                          valueText: valueDropdownDay,
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
                                            context
                                                .read<ScheduleWatcherBloc>()
                                                .add(ScheduleWatcherEvent
                                                    .watchSchedule(
                                                        valueDropdown,
                                                        valueDropdownDay));
                                            setState(() {
                                              isSearch = false;
                                            });
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
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: value.schedule.length,
                            itemBuilder: (context, index) {
                              final data = value.schedule[index];
                              return Container(
                                margin: EdgeInsets.only(
                                    top: index == 0 ? 20 : 0,
                                    bottom: (index == value.schedule.length - 1)
                                        ? 100
                                        : 10),
                                child: ItemSchedule(schedule: data),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
