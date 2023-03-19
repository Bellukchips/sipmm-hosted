import 'package:flutter/material.dart';

import 'package:sipmm/domain/schedule/schedule.dart';
import 'package:sipmm/shared/shared.dart';

class ItemSchedule extends StatelessWidget {
  const ItemSchedule({
    Key? key,
    required this.schedule,
  }) : super(key: key);

  final Schedule schedule;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.of(context).size.width,
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
                  '${schedule.courseName}',
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
                    borderRadius:
                        const BorderRadius.only(topRight: Radius.circular(15))),
                child: Text(
                  '${schedule.times}',
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
                  'Hari',
                  style: FontApp.primaryStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width - 2 * 20 - 100 - 81,
                child: Text(
                  '${schedule.day}',
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
                  'Kelas',
                  style: FontApp.primaryStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width - 2 * 20 - 100 - 81,
                child: Text(
                  '${schedule.className}',
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
                width: MediaQuery.of(context).size.width - 2 * 20 - 100 - 81,
                child: Text(
                  '${schedule.categorieName}',
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
                  'Pengajar / Pengisi',
                  style: FontApp.primaryStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width - 2 * 20 - 100 - 81,
                child: Text(
                  '${schedule.teacherName}',
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
