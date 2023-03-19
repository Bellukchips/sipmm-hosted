import 'package:flutter/material.dart';

import 'package:sipmm/domain/assessment/memorize.dart';
import 'package:sipmm/shared/shared.dart';

class ItemMemorize extends StatelessWidget {
  final Memorize memo;
  const ItemMemorize({
    Key? key,
    required this.memo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: ColorApp.primaryColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width - 2 * 20 - 100 - 15,
                child: Text(
                  '${memo.surah}',
                  style: FontApp.primaryStyle
                      .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                height: 35,
                width: 55,
                alignment: FractionalOffset.center,
                decoration: BoxDecoration(
                    color: ColorApp.primaryColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)
                    )),
                child: Text(
                  '${memo.score}',
                  style: FontApp.primaryStyle.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Ayat',
                  style: FontApp.primaryStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width - 2 * 20 - 100 - 60,
                child: Text(
                  '${memo.verse}',
                  style: FontApp.primaryStyle
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Penguji',
                  style: FontApp.primaryStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width - 2 * 20 - 100 - 60,
                child: Text(
                  '${memo.tester}',
                  style: FontApp.primaryStyle
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Tanggal',
                  style: FontApp.primaryStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width - 2 * 20 - 100 - 60,
                child: Text(
                  '${memo.date_assessment}',
                  style: FontApp.primaryStyle
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
