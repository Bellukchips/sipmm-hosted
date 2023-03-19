part of '../memorize_assessment_page.dart';

class BodyMemorize extends StatefulWidget {
  const BodyMemorize({super.key});

  @override
  State<BodyMemorize> createState() => _BodyMemorizeState();
}

class _BodyMemorizeState extends State<BodyMemorize> {
  ///
  ///
  String valueSurah = '';

  ///
  ///
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MemorizeAssessmentBloc>()
            ..add(
              const MemorizeAssessmentEvent.watchAssessment(''),
            ),
        ),
      ],
      child: BlocBuilder<MemorizeAssessmentBloc, MemorizeAssessmentState>(
        builder: (context, state) {
          return state.map(
              initial: (value) => const LoadingPage(isNotSubmit: true),
              loadInProgress: (value) => const LoadingPage(isNotSubmit: true),
              loadSuccess: (value) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<MemorizeAssessmentBloc>().add(
                        MemorizeAssessmentEvent.watchAssessment(valueSurah));
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
                                'Filter Surah',
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
                                        labelText: 'Cari Surah',
                                        valueStyle: FontApp.primaryStyle,
                                        valueText: valueSurah,
                                        onPressed: () {
                                          UtilsApp.showBottomSheet(context,
                                              child: BottomSheetSurah(
                                            onTap: (data) {
                                              setState(() {
                                                valueSurah = data;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                          ));
                                        },
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: CustomElevationButton(
                                      height: 40,
                                      width: 70,
                                      color: ColorApp.primaryColor,
                                      onTap: () {
                                        context
                                            .read<MemorizeAssessmentBloc>()
                                            .add(MemorizeAssessmentEvent
                                                .watchAssessment(valueSurah));
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
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: value.memo.length,
                            itemBuilder: (context, index) {
                              final data = value.memo[index];
                              return Container(
                                margin: EdgeInsets.only(
                                    top: index == 0 ? 20 : 0,
                                    bottom: (index == value.memo.length - 1)
                                        ? 100
                                        : 10),
                                child: ItemMemorize(memo: data),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              loadFailure: (value) => Center(
                      child: ListView(
                    shrinkWrap: true,
                    children: [
                      CriticalFailureDisplayMemorize(
                        failure: value.failure,
                      )
                    ],
                  )),
              loadEmpty: (value) => RefreshIndicator(
                    onRefresh: () async {
                      context.read<MemorizeAssessmentBloc>().add(
                          MemorizeAssessmentEvent.watchAssessment(valueSurah));
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
                                  'Filter Surah',
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
                                        width:
                                            MediaQuery.of(context).size.width -
                                                2 * 20 -
                                                115 -
                                                10,
                                        child: InputDropdown(
                                          labelText: 'Cari Surah',
                                          valueStyle: FontApp.primaryStyle,
                                          valueText: valueSurah,
                                          onPressed: () {
                                            UtilsApp.showBottomSheet(context,
                                                child: BottomSheetSurah(
                                              onTap: (data) {
                                                setState(() {
                                                  valueSurah = data;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ));
                                          },
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomElevationButton(
                                        height: 40,
                                        width: 70,
                                        color: ColorApp.primaryColor,
                                        onTap: () {
                                          context
                                              .read<MemorizeAssessmentBloc>()
                                              .add(MemorizeAssessmentEvent
                                                  .watchAssessment(valueSurah));
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
                            height: 200,
                            child: EmptyMemorize(),
                          )
                        ],
                      ),
                    ),
                  ));
        },
      ),
    );
  }
}
