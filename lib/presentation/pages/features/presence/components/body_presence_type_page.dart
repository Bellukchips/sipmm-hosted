part of '../presence_type_page.dart';

class BodyPresenceTypePage extends StatefulWidget {
  const BodyPresenceTypePage({super.key});

  @override
  State<BodyPresenceTypePage> createState() => _BodyPresenceTypePageState();
}

class _BodyPresenceTypePageState extends State<BodyPresenceTypePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<PresenceTypeBloc>()
          ..add(
            const PresenceTypeEvent.watchType(),
          ),
        child: BlocBuilder<PresenceTypeBloc, PresenceTypeState>(
          builder: (context, state) {
            return state.map(
              initial: (value) => const LoadingPage(isNotSubmit: true),
              loadInProgress: (value) => const LoadingPage(isNotSubmit: true),
              loadSuccess: (value) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<PresenceTypeBloc>()
                        .add(const PresenceTypeEvent.watchType());
                  },
                  child: GridView.builder(
                    physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    itemCount: value.type.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                    padding: const EdgeInsets.all(20),
                    itemBuilder: (context, index) {
                      final data = value.type[index];
                      return ItemType(
                        type: data,
                        onTap: (id) {
                         getIt<AppRouter>().replace(HistoryPresenceRoute(
                              type: id, nameType: data.name!));
                        },
                      );
                    },
                  ),
                );
              },
              loadFailure: (value) => RefreshIndicator(
                child: Center(
                  child: ListView(
                    physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    shrinkWrap: true,
                    children: [
                      CriticalFailureDisplayPresenceType(
                        failure: value.failure,
                      )
                    ],
                  ),
                ),
                onRefresh: () async {
                  context
                      .read<PresenceTypeBloc>()
                      .add(const PresenceTypeEvent.watchType());
                },
              ),
              loadEmpty: (value) => RefreshIndicator(
                child: Center(
                  child: ListView(
                    physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    shrinkWrap: true,
                    children: const [
                      ItemTypeEmpty(),
                    ],
                  ),
                ),
                onRefresh: () async {
                  context
                      .read<PresenceTypeBloc>()
                      .add(const PresenceTypeEvent.watchType());
                },
              ),
            );
          },
        ));
  }
}
