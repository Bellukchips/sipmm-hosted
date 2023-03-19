import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/application/auth/auth_bloc.dart';
import 'package:sipmm/infrastructure/fcm/fcm_services.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';

@injectable
class App extends StatelessWidget {
  const App({
    super.key,
  });
  // final _appRoute = AppRouter();

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    //
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () => null,
          authenticated: (user) {
            // init fcm
            final fcmService = getIt<FCMServices>();
            fcmService.init();
            return router.replace(HomeRoute(selectMenu: MenuHome.dashboard));
          },
          unauthenticated: () => router.replace(const SplashRoute()),
        );
      },
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'SI PMM',
        routerDelegate: AutoRouterDelegate(router),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
