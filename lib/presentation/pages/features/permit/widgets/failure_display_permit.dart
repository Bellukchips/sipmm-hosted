import 'package:flutter/material.dart';
import 'package:sipmm/domain/core/failure/permit_failure/permit_failure.dart';

class CriticalFailureDisplayPermit extends StatelessWidget {
  final PermitFailure failure;
  const CriticalFailureDisplayPermit({super.key, required this.failure});

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
