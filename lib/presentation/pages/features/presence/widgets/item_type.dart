import 'package:flutter/material.dart';

import 'package:sipmm/domain/presence/presence_type.dart';
import 'package:sipmm/shared/shared.dart';

class ItemType extends StatelessWidget {
  final PresenceType type;
  final Function(int) onTap;
  const ItemType({
    Key? key,
    required this.type,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: MaterialButton(
        elevation: 8,
        animationDuration: const Duration(seconds: 1),
        splashColor: Colors.blue[100],
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        color: Colors.white,
        textColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.fact_check, color: ColorApp.primaryColor),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${type.name}",
              style: FontApp.primaryStyle.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
        onPressed: () {
          onTap(type.id!);
        },
      ),
    );
  }
}
