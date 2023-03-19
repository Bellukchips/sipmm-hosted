
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:resource/resource.dart';
import 'package:sipmm/application/presence/presence_count/presence_count_bloc.dart';

import 'package:sipmm/application/presence/presence_history/presence_history_bloc.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/features/presence/widgets/failure_display_type.dart';
import 'package:sipmm/presentation/pages/features/presence/widgets/item_empty.dart';
import 'package:sipmm/presentation/pages/features/presence/widgets/item_presence.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';
import 'package:sipmm/presentation/pages/widgets/shimmer_text.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';

part 'components/body_history_presence_page.dart';

class HistoryPresencePage extends StatelessWidget {
  const HistoryPresencePage({
    Key? key,
    required this.type,
    required this.nameType,
  }) : super(key: key);
  final int type;
  final String nameType;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        getIt<AppRouter>()
            .replace(HomeRoute(selectMenu: MenuHome.presensi));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorApp.primaryColor,
          leading: IconButton(
              onPressed: () {
              getIt<AppRouter>()
                    .replace(HomeRoute(selectMenu: MenuHome.presensi));
              },
              icon: const Icon(Icons.arrow_back)),
          title: Text(
            'History Presensi $nameType',
            style: FontApp.primaryStyle.copyWith(color: Colors.white),
          ),
        ),
        body: BodyHistoryPresencePage(type: type),
      ),
    );
  }
}
