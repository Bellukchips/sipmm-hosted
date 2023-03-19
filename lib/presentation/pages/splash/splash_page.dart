import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';
part 'components/body_splash_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    const duration = Duration(seconds: 2);
    Timer(duration, () {
      AutoRouter.of(context).replace(const AuthRoute());
    });

    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: BodySplashScreen(),
        ),
      ),
    );
  }
}
