
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:resource/resource.dart';

import 'package:sipmm/domain/payment/payment_history.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';

part 'components/body_detail_payment.dart';

class DetailPaymentPage extends StatefulWidget {
  final PaymentHistory history;
  final int idCategory;
  const DetailPaymentPage({
    Key? key,
    required this.history,
    required this.idCategory,
  }) : super(key: key);

  @override
  State<DetailPaymentPage> createState() => _DetailPaymentPageState();
}

class _DetailPaymentPageState extends State<DetailPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
      getIt<AppRouter>().replace(HistoryPaymentRoute(
            idCategory: widget.idCategory, name: widget.history.payment_name));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Detail Pembayaran'),
          backgroundColor: ColorApp.primaryColor,
          leading: IconButton(
              onPressed: () {
                 getIt<AppRouter>().replace(HistoryPaymentRoute(
                    idCategory: widget.idCategory,
                    name: widget.history.payment_name));
              },
              icon: const Icon(
                Icons.arrow_back,
              )),
        ),
        body: BodyDetailPayment(history: widget.history),
      ),
    );
  }
}
