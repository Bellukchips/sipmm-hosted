import 'package:flutter/material.dart';

import 'package:sipmm/domain/core/failure/payment_failure/payment_failure.dart';

class CriticalFailureDisplayPayment extends StatelessWidget {
  final PaymentFailure failure;
  const CriticalFailureDisplayPayment({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              failure.maybeMap(
                  orElse: () => 'Unexpected Error. \nPlease, contact support',
                  serverError: (error) => 'Something went wrong 😭',
                  unauthenticated: (error) =>
                      'Coba login kembali untuk memuat data 😊\n$error',
                  unexpected: (error) =>
                      'Error yang tidak terprediksi 😭\nCoba bersihkan data aplikasi / Coba login kembali untuk memuat data \n${error.error}'),
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Icon(Icons.email), Text('I NEED HELP')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
