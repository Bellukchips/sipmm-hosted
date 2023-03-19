part of '../notice_page.dart';

class BodyNoticePage extends StatefulWidget {
  const BodyNoticePage({super.key});

  @override
  State<BodyNoticePage> createState() => _BodyNoticePageState();
}

class _BodyNoticePageState extends State<BodyNoticePage> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) =>
          getIt<NewsWatcherBloc>()..add(const NewsWatcherEvent.watchOldNews()),
      child: BlocBuilder<NewsWatcherBloc, NewsWatcherState>(
        builder: (context, state) {
          return state.map(
              loadEmpty: (value) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<NewsWatcherBloc>()
                        .add(const NewsWatcherEvent.watchOldNews());
                  },
                  child: Center(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(
                          parent: BouncingScrollPhysics()),
                      children: const [
                        EmptyNews(
                          isOld: true,
                        ),
                      ],
                    ),
                  ),
                );
              },
              initial: (_) => Center(
                      child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(ColorApp.primaryColor),
                  )),
              loadInProgress: (_) => Center(
                      child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(ColorApp.primaryColor),
                  )),
              loadSuccess: (state) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<NewsWatcherBloc>()
                        .add(const NewsWatcherEvent.watchOldNews());
                  },
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    itemCount: state.news.length,
                    itemBuilder: (context, index) {
                      final data = state.news[index];
                      return Container(
                        margin: EdgeInsets.only(
                            top: index == 0 ? 20 : 0,
                            bottom:
                                (index == state.news.length - 1) ? 100 : 10),
                        child: ItemNews(
                            onTap: () {
                              getIt<AppRouter>().replace(
                                  DetailNoticeRoute(news: data, isOld: true));
                            },
                            width: screen.width,
                            news: data,
                            isOld: true),
                      );
                    },
                  ),
                );
              },
              loadFailure: (state) => RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<NewsWatcherBloc>()
                          .add(const NewsWatcherEvent.watchOldNews());
                    },
                    child: Center(
                      child: ListView(
                        physics: const AlwaysScrollableScrollPhysics(
                            parent: BouncingScrollPhysics()),
                        shrinkWrap: true,
                        children: [
                          CriticalFailureNotification(failure: state.failure),
                        ],
                      ),
                    ),
                  ));
        },
      ),
    );
  }
}
