
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:resource/resource.dart';
import 'package:sipmm/application/payment/history/payment_history_bloc.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/features/payment/widgets/failure_display_payment.dart';
import 'package:sipmm/presentation/pages/features/payment/widgets/item_empty_category_payment.dart';
import 'package:sipmm/presentation/pages/features/payment/widgets/item_history_payment.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';

part 'components/body_history_payment_page.dart';

class HistoryPaymentPage extends StatelessWidget {
  final String? name;
  final int? idCategory;
  const HistoryPaymentPage({
    Key? key,
    this.name,
    this.idCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
         getIt<AppRouter>()
            .replace(HomeRoute(selectMenu: MenuHome.pembayaran));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            '${Strings.riwayatPembayaran} $name',
            style: FontApp.primaryStyle.copyWith(color: Colors.white),
          ),
          backgroundColor: ColorApp.primaryColor,
          leading: IconButton(
              onPressed: () {
                getIt<AppRouter>()
                    .replace(HomeRoute(selectMenu: MenuHome.pembayaran));
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: BodyHistoryPaymentPage(idCategory: idCategory),
      ),
    );
  }
}
