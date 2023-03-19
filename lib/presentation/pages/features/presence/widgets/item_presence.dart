import 'package:flutter/material.dart';

import 'package:sipmm/domain/presence/history_presence.dart';
import 'package:sipmm/shared/shared.dart';

import '../../../../../shared/assets.dart';

class ItemPresence extends StatelessWidget {
  const ItemPresence({
    Key? key,
    required this.data,
  }) : super(key: key);
  final PresenceHistory data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorApp.primaryColor)),
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
                  '${data.type}',
                  style: FontApp.primaryStyle
                      .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                height: 35,
                width: 100,
                alignment: FractionalOffset.center,
                decoration: BoxDecoration(
                    color: ColorApp.primaryColor,
                    borderRadius:
                        const BorderRadius.only(topRight: Radius.circular(15))),
                child: Text(
                  '${data.status}',
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
                  'Tanggal',
                  style: FontApp.primaryStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width - 2 * 20 - 100 - 60,
                child: Text(
                  '${data.date_presence}',
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
                  'Kategori',
                  style: FontApp.primaryStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width - 2 * 20 - 100 - 60,
                child: Text(
                  '${data.other_category}',
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
                  'Operator',
                  style: FontApp.primaryStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width - 2 * 20 - 100 - 60,
                child: Text(
                  '${data.name_operator}',
                  style: FontApp.primaryStyle
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
