import 'package:flutter/material.dart';
import 'package:resource/resource.dart';

import 'package:sipmm/domain/payment/payment_history.dart';
import 'package:sipmm/shared/shared.dart';

class ItemHistoryPayment extends StatelessWidget {
  final PaymentHistory data;
  final Function(PaymentHistory) onTap;
  const ItemHistoryPayment({
    Key? key,
    required this.data,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: data.status == 1
                ? ColorApp.primaryColor
                : data.status == null
                    ? ColorApp.yellowDark
                    : Colors.red,
            style: BorderStyle.solid),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: () {
          onTap(data);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width:
                        MediaQuery.of(context).size.width - 2 * 20 - 100 - 10,
                    child: Text(
                      '${data.payment_name}',
                      style: FontApp.primaryStyle
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.history,
                    color: data.status == 1
                        ? ColorApp.primaryColor
                        : data.status == null
                            ? ColorApp.yellowDark
                            : Colors.red,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Metode Pembayaran',
                    style: FontApp.primaryStyle
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width - 2 * 20 - 200,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    '${data.method} / ${data.media_payment}',
                    style: FontApp.primaryStyle
                        .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Total',
                    style: FontApp.primaryStyle
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 2 * 20 - 200,
                  height: 15,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    formatCurrency.format(double.parse(data.total_payment!)),
                    style: FontApp.primaryStyle
                        .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Tanggal',
                    style: FontApp.primaryStyle
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 2 * 20 - 200,
                  height: 15,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    '${data.date}',
                    style: FontApp.primaryStyle
                        .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Status',
                    style: FontApp.primaryStyle
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 15,
                  width: MediaQuery.of(context).size.width - 2 * 20 - 200,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    data.status == null
                        ? 'Menunggu verifikasi'
                        : data.status == 1
                            ? 'Di Terima'
                            : 'Di Tolak',
                    style: FontApp.primaryStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: data.status == 1
                            ? Colors.green.shade800
                            : data.status == null
                                ? const Color.fromARGB(255, 194, 175, 1)
                                : Colors.red),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
