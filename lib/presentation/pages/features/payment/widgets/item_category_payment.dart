import 'package:flutter/material.dart';
import 'package:resource/resource.dart';

import 'package:sipmm/domain/payment/category_payment.dart';
import 'package:sipmm/shared/shared.dart';

class ItemCategoryPayment extends StatelessWidget {
  const ItemCategoryPayment({
    Key? key,
    required this.onTap,
    required this.data,
  }) : super(key: key);
  final Function(int) onTap;
  final CategoryPayment data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border:
            Border.all(color: ColorApp.primaryColor, style: BorderStyle.solid),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: () {
          onTap(data.id_category!);
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
                    Icons.payments,
                    color: ColorApp.primaryColor,
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
                    '${formatCurrency.format(data.sum_total)} / ${formatCurrency.format(double.parse(data.total!))}',
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
                    'Kekurangan',
                    style: FontApp.primaryStyle
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 2 * 20 - 200,
                  height: 15,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    formatCurrency.format(data.diff),
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
                    data.status == 1 ? 'Lunas' : 'Belum Lunas',
                    style: FontApp.primaryStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: data.status == 1
                            ? Colors.green.shade800
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
