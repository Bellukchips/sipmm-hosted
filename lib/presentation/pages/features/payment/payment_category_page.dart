
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sipmm/application/payment/category/category_payment_bloc.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/features/payment/widgets/failure_display_payment.dart';
import 'package:sipmm/presentation/pages/features/payment/widgets/item_category_payment.dart';
import 'package:sipmm/presentation/pages/features/payment/widgets/item_empty_category_payment.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';
part 'components/body_payment_category_page.dart';

class PaymentCategoryPage extends StatelessWidget {
  const PaymentCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
           getIt<AppRouter>()
              .replace(const FormPaymentRoute());
        },
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Container(
            padding: const EdgeInsets.all(10),
            alignment: FractionalOffset.center,
            decoration: BoxDecoration(
                color: ColorApp.primaryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(20))),
            width: 200,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  ButtonString.buatPembayaranbaru,
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
      body: const BodyPaymentCategoryPage(),
    );
  }
}
