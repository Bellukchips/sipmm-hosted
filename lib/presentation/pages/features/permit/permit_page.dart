
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:resource/resource/resource.dart';
import 'package:sipmm/application/permit/permit_actor/permitactor_bloc.dart';
import 'package:sipmm/application/permit/permit_watcher/permitwatcher_bloc.dart';
import 'package:sipmm/domain/permit/permit.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/features/permit/widgets/empty_permit.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';
import 'package:sipmm/shared/shared.dart';

import 'widgets/item_permit.dart';
import 'widgets/failure_display_permit.dart';
import 'package:sipmm/presentation/routes/app_router.dart';

part 'components/body_permit_page.dart';

class PermitPage extends StatefulWidget {
  const PermitPage({super.key});

  @override
  State<PermitPage> createState() => _PermitPageState();
}

class _PermitPageState extends State<PermitPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: GestureDetector(
        onTap: () {
         

       getIt<AppRouter>().replace(FormInputPermitRoute(
              isHome: false, editedPermit: Permit.empty()));
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
                  'Perizinan baru',
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
      body: const SafeArea(child: BodyPermitPage()),
    );
  }
}
