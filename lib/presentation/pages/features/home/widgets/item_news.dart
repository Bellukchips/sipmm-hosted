import 'package:flutter/material.dart';
import 'package:resource/resource.dart';

import 'package:sipmm/domain/news/news.dart';
import 'package:sipmm/shared/shared.dart';

class ItemNews extends StatelessWidget {
  final double width;
  final News news;
  final bool isOld;
  final VoidCallback onTap;
  const ItemNews({
    Key? key,
    required this.width,
    required this.news,
    required this.isOld,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: ColorApp.primaryColor),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        onPressed: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${news.title}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: FontApp.primaryStyle.copyWith(
                        fontSize: Dimens.dp16, fontWeight: FontWeight.w400),
                  ),
                  isOld
                      ? Icon(
                          Icons.notifications,
                          color: ColorApp.primaryColor,
                        )
                      : Icon(
                          Icons.notifications_on,
                          color: ColorApp.primaryColor,
                        )
                ],
              )),
              Expanded(
                  child: Text(
                '${news.desc}',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: FontApp.primaryStyle.copyWith(
                    fontSize: Dimens.dp14, fontWeight: FontWeight.w300),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
