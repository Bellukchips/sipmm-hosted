import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sipmm/domain/news/news.dart';
import 'package:sipmm/domain/payment/payment_history.dart';
import 'package:sipmm/domain/permit/permit.dart';

import 'package:sipmm/presentation/pages/auth/auth_page.dart';
import 'package:sipmm/presentation/pages/features/home/home_page.dart';
import 'package:sipmm/presentation/pages/features/payment/detail_payment.dart';
import 'package:sipmm/presentation/pages/features/payment/form_payment_page.dart';
import 'package:sipmm/presentation/pages/features/payment/history_payment_page.dart';
import 'package:sipmm/presentation/pages/features/permit/form_input_permit.dart';
import 'package:sipmm/presentation/pages/features/presence/history_presence_page.dart';
import 'package:sipmm/presentation/pages/splash/splash_page.dart';
import 'package:sipmm/presentation/pages/features/notice/detail_notice_page.dart';
import 'package:sipmm/presentation/pages/features/notice/notice_page.dart';
import 'package:sipmm/presentation/routes/routes.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: Routes.splash, page: SplashPage, initial: true),
    AutoRoute(
      path: Routes.login,
      page: AuthPage,
    ),
    AutoRoute(
      path: Routes.home,
      page: HomePage,
    ),
    AutoRoute(
      path: Routes.notif,
      page: NoticePage,
    ),
    AutoRoute(
      path: Routes.detailNotif,
      page: DetailNoticePage,
    ),
    AutoRoute(
      path: Routes.createNewPermit,
      page: FormInputPermitPage,
    ),
    AutoRoute(
      path: Routes.historyPresence,
      page: HistoryPresencePage,
    ),
    AutoRoute(
      path: Routes.historyPayment,
      page: HistoryPaymentPage,
    ),
    AutoRoute(
      path: Routes.creatNewPayment,
      page: FormPaymentPage,
    ),
    AutoRoute(
      path: Routes.detailPayment,
      page: DetailPaymentPage,
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
