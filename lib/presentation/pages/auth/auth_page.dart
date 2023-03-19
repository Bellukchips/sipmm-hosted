import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:resource/resource.dart';
import 'package:sipmm/application/auth/auth_bloc.dart';
import 'package:sipmm/application/login/login_bloc.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'components/background_auth.dart';
part 'components/body_auth.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Center(child: BodyAuthPage())),
    );
  }
}
