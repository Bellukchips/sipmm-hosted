import 'package:flutter/material.dart';
import 'package:resource/resource.dart';

import 'package:sipmm/shared/shared.dart';

class CardPermitCount extends StatelessWidget {
  const CardPermitCount({
    Key? key,
    required this.text,
    required this.screen,
  }) : super(key: key);
  final String text;
  final Size screen;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        height: 120,
        width: screen.width,
        decoration: BoxDecoration(
          color: ColorApp.primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Text(
                Strings.totalIzin,
                style: FontApp.primaryStyle.copyWith(
                    fontSize: Dimens.dp20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade800),
              )),
              Expanded(
                  child: Text(
                text,
                maxLines: 1,
                style: FontApp.primaryStyle.copyWith(
                    fontSize: Dimens.dp32, fontWeight: FontWeight.w300),
              )),
            ],
          ),
        ));
  }
}
