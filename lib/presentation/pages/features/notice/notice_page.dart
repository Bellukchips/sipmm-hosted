
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sipmm/application/news/news_watcher/news_watcher_bloc.dart';
import 'package:sipmm/presentation/pages/features/home/widgets/empty_news.dart';
import 'package:sipmm/presentation/pages/features/home/widgets/item_news.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';
import 'package:sipmm/presentation/pages/features/home/widgets/critical_failure.dart';
import 'package:sipmm/injection.dart';
part 'components/body_notice_page.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({super.key});

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
          //route
        getIt<AppRouter>()
            .replace(HomeRoute(selectMenu: MenuHome.dashboard));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                  //route
              getIt<AppRouter>()
                    .replace(HomeRoute(selectMenu: MenuHome.dashboard));
              },
              icon: const Icon(Icons.arrow_back)),
          backgroundColor: ColorApp.primaryColor,
          centerTitle: true,
          title: Text(
            Strings.pengumumanTerbaca,
            style: FontApp.primaryStyle.copyWith(color: Colors.white),
          ),
          elevation: 0,
        ),
        body: const SafeArea(
          child: BodyNoticePage(),
        ),
      ),
    );
  }
}
