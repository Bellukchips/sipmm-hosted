// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    AuthRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomePage(
          key: args.key,
          selectMenu: args.selectMenu,
        ),
      );
    },
    NoticeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NoticePage(),
      );
    },
    DetailNoticeRoute.name: (routeData) {
      final args = routeData.argsAs<DetailNoticeRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DetailNoticePage(
          key: args.key,
          news: args.news,
          isOld: args.isOld,
        ),
      );
    },
    FormInputPermitRoute.name: (routeData) {
      final args = routeData.argsAs<FormInputPermitRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: FormInputPermitPage(
          key: args.key,
          isHome: args.isHome,
          editedPermit: args.editedPermit,
          isEdit: args.isEdit,
        ),
      );
    },
    HistoryPresenceRoute.name: (routeData) {
      final args = routeData.argsAs<HistoryPresenceRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HistoryPresencePage(
          key: args.key,
          type: args.type,
          nameType: args.nameType,
        ),
      );
    },
    HistoryPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<HistoryPaymentRouteArgs>(
          orElse: () => const HistoryPaymentRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HistoryPaymentPage(
          key: args.key,
          name: args.name,
          idCategory: args.idCategory,
        ),
      );
    },
    FormPaymentRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FormPaymentPage(),
      );
    },
    DetailPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<DetailPaymentRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DetailPaymentPage(
          key: args.key,
          history: args.history,
          idCategory: args.idCategory,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          AuthRoute.name,
          path: '/login',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        RouteConfig(
          NoticeRoute.name,
          path: '/notif',
        ),
        RouteConfig(
          DetailNoticeRoute.name,
          path: '/detailNotif',
        ),
        RouteConfig(
          FormInputPermitRoute.name,
          path: '/formPermit',
        ),
        RouteConfig(
          HistoryPresenceRoute.name,
          path: '/historyPresence',
        ),
        RouteConfig(
          HistoryPaymentRoute.name,
          path: '/historyPayment',
        ),
        RouteConfig(
          FormPaymentRoute.name,
          path: '/formPayment',
        ),
        RouteConfig(
          DetailPaymentRoute.name,
          path: '/detailPayment',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute()
      : super(
          AuthRoute.name,
          path: '/login',
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    required String selectMenu,
  }) : super(
          HomeRoute.name,
          path: '/home',
          args: HomeRouteArgs(
            key: key,
            selectMenu: selectMenu,
          ),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    required this.selectMenu,
  });

  final Key? key;

  final String selectMenu;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, selectMenu: $selectMenu}';
  }
}

/// generated route for
/// [NoticePage]
class NoticeRoute extends PageRouteInfo<void> {
  const NoticeRoute()
      : super(
          NoticeRoute.name,
          path: '/notif',
        );

  static const String name = 'NoticeRoute';
}

/// generated route for
/// [DetailNoticePage]
class DetailNoticeRoute extends PageRouteInfo<DetailNoticeRouteArgs> {
  DetailNoticeRoute({
    Key? key,
    required News news,
    required bool isOld,
  }) : super(
          DetailNoticeRoute.name,
          path: '/detailNotif',
          args: DetailNoticeRouteArgs(
            key: key,
            news: news,
            isOld: isOld,
          ),
        );

  static const String name = 'DetailNoticeRoute';
}

class DetailNoticeRouteArgs {
  const DetailNoticeRouteArgs({
    this.key,
    required this.news,
    required this.isOld,
  });

  final Key? key;

  final News news;

  final bool isOld;

  @override
  String toString() {
    return 'DetailNoticeRouteArgs{key: $key, news: $news, isOld: $isOld}';
  }
}

/// generated route for
/// [FormInputPermitPage]
class FormInputPermitRoute extends PageRouteInfo<FormInputPermitRouteArgs> {
  FormInputPermitRoute({
    Key? key,
    bool? isHome,
    required Permit editedPermit,
    bool? isEdit = false,
  }) : super(
          FormInputPermitRoute.name,
          path: '/formPermit',
          args: FormInputPermitRouteArgs(
            key: key,
            isHome: isHome,
            editedPermit: editedPermit,
            isEdit: isEdit,
          ),
        );

  static const String name = 'FormInputPermitRoute';
}

class FormInputPermitRouteArgs {
  const FormInputPermitRouteArgs({
    this.key,
    this.isHome,
    required this.editedPermit,
    this.isEdit = false,
  });

  final Key? key;

  final bool? isHome;

  final Permit editedPermit;

  final bool? isEdit;

  @override
  String toString() {
    return 'FormInputPermitRouteArgs{key: $key, isHome: $isHome, editedPermit: $editedPermit, isEdit: $isEdit}';
  }
}

/// generated route for
/// [HistoryPresencePage]
class HistoryPresenceRoute extends PageRouteInfo<HistoryPresenceRouteArgs> {
  HistoryPresenceRoute({
    Key? key,
    required int type,
    required String nameType,
  }) : super(
          HistoryPresenceRoute.name,
          path: '/historyPresence',
          args: HistoryPresenceRouteArgs(
            key: key,
            type: type,
            nameType: nameType,
          ),
        );

  static const String name = 'HistoryPresenceRoute';
}

class HistoryPresenceRouteArgs {
  const HistoryPresenceRouteArgs({
    this.key,
    required this.type,
    required this.nameType,
  });

  final Key? key;

  final int type;

  final String nameType;

  @override
  String toString() {
    return 'HistoryPresenceRouteArgs{key: $key, type: $type, nameType: $nameType}';
  }
}

/// generated route for
/// [HistoryPaymentPage]
class HistoryPaymentRoute extends PageRouteInfo<HistoryPaymentRouteArgs> {
  HistoryPaymentRoute({
    Key? key,
    String? name,
    int? idCategory,
  }) : super(
          HistoryPaymentRoute.name,
          path: '/historyPayment',
          args: HistoryPaymentRouteArgs(
            key: key,
            name: name,
            idCategory: idCategory,
          ),
        );

  static const String name = 'HistoryPaymentRoute';
}

class HistoryPaymentRouteArgs {
  const HistoryPaymentRouteArgs({
    this.key,
    this.name,
    this.idCategory,
  });

  final Key? key;

  final String? name;

  final int? idCategory;

  @override
  String toString() {
    return 'HistoryPaymentRouteArgs{key: $key, name: $name, idCategory: $idCategory}';
  }
}

/// generated route for
/// [FormPaymentPage]
class FormPaymentRoute extends PageRouteInfo<void> {
  const FormPaymentRoute()
      : super(
          FormPaymentRoute.name,
          path: '/formPayment',
        );

  static const String name = 'FormPaymentRoute';
}

/// generated route for
/// [DetailPaymentPage]
class DetailPaymentRoute extends PageRouteInfo<DetailPaymentRouteArgs> {
  DetailPaymentRoute({
    Key? key,
    required PaymentHistory history,
    required int idCategory,
  }) : super(
          DetailPaymentRoute.name,
          path: '/detailPayment',
          args: DetailPaymentRouteArgs(
            key: key,
            history: history,
            idCategory: idCategory,
          ),
        );

  static const String name = 'DetailPaymentRoute';
}

class DetailPaymentRouteArgs {
  const DetailPaymentRouteArgs({
    this.key,
    required this.history,
    required this.idCategory,
  });

  final Key? key;

  final PaymentHistory history;

  final int idCategory;

  @override
  String toString() {
    return 'DetailPaymentRouteArgs{key: $key, history: $history, idCategory: $idCategory}';
  }
}
