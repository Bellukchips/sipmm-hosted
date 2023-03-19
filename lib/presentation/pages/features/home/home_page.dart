import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sipmm/application/auth/auth_bloc.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/features/home/dashboard/dashboard_page.dart';
import 'package:sipmm/presentation/pages/features/memorize_assessment/memorize_assessment_page.dart';
import 'package:sipmm/presentation/pages/features/payment/payment_category_page.dart';
import 'package:sipmm/presentation/pages/features/permit/permit_page.dart';
import 'package:sipmm/presentation/pages/features/presence/presence_type_page.dart';
import 'package:sipmm/presentation/pages/features/schedule/schedule_page.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';
import 'package:image_network/image_network.dart';

import 'widgets/list_tile_custom.dart';

class HomePage extends StatefulWidget {
  final String selectMenu;
  const HomePage({Key? key, required this.selectMenu}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String selectMenu;
  @override
  void initState() {
    selectMenu = widget.selectMenu;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                unauthenticated: (_) {
                  getIt<AppRouter>().replace(const AuthRoute());
                });
          },
        ),
      ],
      child: WillPopScope(
        onWillPop: () async {
          UtilsApp.alertConfirmation(context,
              content: 'Ingin keluar dari aplikasi?',
              btnConfirm: 'Keluar',
              btnCancel: 'Kembali', onTap: () {
            SystemNavigator.pop();
          });
          return false;
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const LoadingPage(isNotSubmit: true),
              authenticated: (state) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text(selectMenu),
                    actions: [
                      IconButton(
                          onPressed: () {
                            getIt<AppRouter>().replace(const NoticeRoute());
                          },
                          icon: const Icon(Icons.notifications)),
                    ],
                    elevation: 0,
                    backgroundColor: ColorApp.primaryColor,
                  ),
                  drawer: SafeArea(
                    child: Drawer(
                      child: Column(
                        children: [
                          UserAccountsDrawerHeader(
                            currentAccountPicture: CircleAvatar(
                              backgroundColor: ColorApp.primaryColor,
                              radius: 50,
                              child: ClipOval(
                                child: ImageNetwork(
                                  image: (state.user.photo != null)
                                      ? '${Config.profile}${state.user.photo}'
                                      : 'https://via.placeholder.com/150/d9d8d7/808080?Text=User',
                                  height: 70,
                                  width: 70,
                                  fitAndroidIos: BoxFit.cover,
                                  fitWeb: BoxFitWeb.cover,
                                  imageCache: const CachedNetworkImageProvider(
                                      'https://via.placeholder.com/400'),
                                  onLoading: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        ColorApp.primaryColor),
                                  ),
                                  onError: const Icon(
                                    Icons.error,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            decoration:
                                BoxDecoration(color: ColorApp.primaryColor),
                            accountName: Text('${state.user.name}',
                                style: FontApp.primaryStyle
                                    .copyWith(color: Colors.white)),
                            accountEmail: Text(
                              '${state.user.email}',
                              style: FontApp.primaryStyle
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            color: Colors.white,
                            child: ListView(
                              children: generateListDrawer(context),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  body: Container(
                    child: selectMenu == MenuHome.dashboard
                        ? const DashboardPage()
                        : selectMenu == MenuHome.perizinan
                            ? const PermitPage()
                            : selectMenu == MenuHome.jadwal
                                ? const SchedulePage()
                                : selectMenu == MenuHome.nilaiHafalan
                                    ? const MemorizeAssessmentPage()
                                    : selectMenu == MenuHome.presensi
                                        ? const PresenceTypePage()
                                        : selectMenu == MenuHome.pembayaran
                                            ? const PaymentCategoryPage()
                                            : Container(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  //? generate menu drawer
  List<String> dataMenu = [
    MenuHome.dashboard,
    MenuHome.perizinan,
    MenuHome.jadwal,
    MenuHome.nilaiHafalan,
    MenuHome.presensi,
    MenuHome.pembayaran,
    MenuHome.keluar,
  ];

  ///
  List<Widget> generateListDrawer(BuildContext context) {
    return dataMenu
        .map((e) => Container(
              margin:
                  EdgeInsets.only(bottom: (e == dataMenu.length - 1) ? 50 : 0),
              child: ListTileCustom(
                title: e,
                color: ColorApp.primaryColor,
                icon: e == MenuHome.dashboard
                    ? Icons.home
                    : e == MenuHome.perizinan
                        ? Icons.description
                        : e == MenuHome.jadwal
                            ? Icons.calendar_today
                            : e == MenuHome.nilaiHafalan
                                ? Icons.assignment
                                : e == MenuHome.presensi
                                    ? Icons.fact_check
                                    : e == MenuHome.pembayaran
                                        ? Icons.payment
                                        : Icons.logout,
                isSelected: selectMenu == e,
                onTap: () {
                  setState(() {
                    selectMenu = e;
                  });
                  Navigator.pop(context);

                  if (e == MenuHome.keluar) {
                    context.read<AuthBloc>().add(const AuthEvent.loggedOut());
                    UtilsApp.alertLoading(context);
                  }
                },
              ),
            ))
        .toList();
  }
}
