import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resource/shared/launch_url.dart';
import 'package:sipmm/application/news/news_actor/news_actor_bloc.dart';
import 'package:sipmm/domain/news/news.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:resource/resource.dart';
part 'components/body_detail_notice_page.dart';

class DetailNoticePage extends StatefulWidget {
  final News news;
  final bool isOld;

  const DetailNoticePage({super.key, required this.news, required this.isOld});

  @override
  State<DetailNoticePage> createState() => _DetailNoticePageState();
}

class _DetailNoticePageState extends State<DetailNoticePage> {
  @override
  void initState() {
    context.read<NewsActorBloc>().add(NewsActorEvent.readNews(widget.news.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (widget.isOld) {
          AutoRouter.of(context).replace(const NoticeRoute());
        } else {
          //route
          AutoRouter.of(context)
              .replace(HomeRoute(selectMenu: MenuHome.dashboard));
        }
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                if (widget.isOld) {
                  AutoRouter.of(context).replace(const NoticeRoute());
                } else {
                  //route
                  AutoRouter.of(context)
                      .replace(HomeRoute(selectMenu: MenuHome.dashboard));
                }
              },
              icon: const Icon(Icons.arrow_back)),
          title: Text(Strings.detailPemberitahuan),
          centerTitle: true,
          backgroundColor: ColorApp.primaryColor,
        ),
        body: BlocBuilder<NewsActorBloc, NewsActorState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const LoadingPage(isNotSubmit: true),
              actionInProgress: (_) => const LoadingPage(isNotSubmit: true),
              failure: (_) => Container(),
              success: (_) => RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<NewsActorBloc>()
                        .add(NewsActorEvent.readNews(widget.news.id));
                  },
                  child: BodyDetailNoticePage(news: widget.news)),
            );
          },
        ),
      ),
    );
  }
}
