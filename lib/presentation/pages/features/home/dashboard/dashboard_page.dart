
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resource/resource.dart';
import 'package:sipmm/application/news/news_watcher/news_watcher_bloc.dart';
import 'package:sipmm/application/permit/permit_watcher/permitwatcher_bloc.dart';
import 'package:sipmm/domain/permit/permit.dart';
import 'package:sipmm/presentation/pages/features/home/widgets/card_permit_count.dart';
import 'package:sipmm/presentation/pages/features/home/widgets/critical_failure.dart';
import 'package:sipmm/presentation/pages/features/home/widgets/empty_news.dart';
import 'package:sipmm/presentation/pages/features/home/widgets/item_news.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/widgets/shimmer_text.dart';
import 'package:sipmm/shared/shared.dart';
import 'package:sipmm/presentation/routes/app_router.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NewsWatcherBloc>()
            ..add(const NewsWatcherEvent.watchLatestNews()),
        ),
        BlocProvider(
          create: (context) => getIt<PermitWatcherBloc>()
            ..add(const PermitWatcherEvent.watchPermitCount()),
        )
      ],
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CountPermitBloc(screen: screen),
              Container(
                margin: const EdgeInsets.all(20),
                child: Text(
                  Strings.pemberitahuanTerbaru,
                  style: FontApp.primaryStyle.copyWith(
                      fontSize: Dimens.dp18, fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(child: NewsLatestBloc(screen: screen)),
            ],
          ),
        ),
        floatingActionButton: GestureDetector(
          onTap: () {
             getIt<AppRouter>().replace(FormInputPermitRoute(
                isHome: true, editedPermit: Permit.empty()));
          },
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Container(
              alignment: FractionalOffset.center,
              decoration: BoxDecoration(
                  color: ColorApp.primaryColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(20))),
              width: 150,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    ButtonString.perizinanbaru,
                    style: FontApp.primaryStyle.copyWith(color: Colors.white),
                  ),
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CountPermitBloc extends StatelessWidget {
  const CountPermitBloc({
    super.key,
    required this.screen,
  });

  final Size screen;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PermitWatcherBloc, PermitWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Container(),
          loadInProgress: (value) {
            return Container(
              margin: const EdgeInsets.all(20),
              height: 120,
              width: screen.width,
              decoration: BoxDecoration(
                color: ColorApp.primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      Strings.totalIzin,
                      style: FontApp.primaryStyle.copyWith(
                          fontSize: Dimens.dp20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade800),
                    )),
                    const Expanded(
                        child: ShimmerText(
                      height: 10,
                    )),
                  ],
                ),
              ),
            );
          },
          initial: (_) {
            return Container(
              margin: const EdgeInsets.all(20),
              height: 120,
              width: screen.width,
              decoration: BoxDecoration(
                color: ColorApp.primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      Strings.totalIzin,
                      style: FontApp.primaryStyle.copyWith(
                          fontSize: Dimens.dp20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade800),
                    )),
                    const Expanded(
                        child: ShimmerText(
                      height: 10,
                    )),
                  ],
                ),
              ),
            );
          },
          loadFailure: (permit) {
            return CardPermitCount(
              screen: screen,
              text: "😭 Can't load",
            );
          },
          loadEmpty: (value) {
            return CardPermitCount(
              screen: screen,
              text: '0',
            );
          },
          loadSuccessPermitCount: (state) {
            return CardPermitCount(
                text: '${state.permit.total}', screen: screen);
          },
        );
      },
    );
  }
}

/// NEWS LATEST BLOC
class NewsLatestBloc extends StatelessWidget {
  const NewsLatestBloc({
    super.key,
    required this.screen,
  });

  final Size screen;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsWatcherBloc, NewsWatcherState>(
      builder: (context, state) {
        return state.map(
            loadEmpty: (value) {
              return RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<NewsWatcherBloc>()
                      .add(const NewsWatcherEvent.watchLatestNews());
                  context
                      .read<PermitWatcherBloc>()
                      .add(const PermitWatcherEvent.watchPermitCount());
                },
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    children: const [
                      Center(
                        child: EmptyNews(
                          isOld: false,
                        ),
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
                      .add(const NewsWatcherEvent.watchLatestNews());
                  context
                      .read<PermitWatcherBloc>()
                      .add(const PermitWatcherEvent.watchPermitCount());
                },
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  itemCount: state.news.length,
                  itemBuilder: (context, index) {
                    final data = state.news[index];
                    return Container(
                      padding: EdgeInsets.only(
                          top: index == 0 ? 2 : 0,
                          bottom: (index == state.news.length - 1) ? 100 : 10),
                      child: ItemNews(
                          onTap: () {
                            getIt<AppRouter>().replace(
                                DetailNoticeRoute(news: data, isOld: false));
                          },
                          width: screen.width,
                          news: data,
                          isOld: false),
                    );
                  },
                ),
              );
            },
            loadFailure: (state) => RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<NewsWatcherBloc>()
                        .add(const NewsWatcherEvent.watchLatestNews());
                    context
                        .read<PermitWatcherBloc>()
                        .add(const PermitWatcherEvent.watchPermitCount());
                  },
                  child: ListView(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    children: [
                      Center(
                          child: CriticalFailureNotification(
                              failure: state.failure)),
                    ],
                  ),
                ));
      },
    );
  }
}
