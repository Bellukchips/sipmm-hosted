import 'package:flutter/material.dart';

import 'package:sipmm/shared/shared.dart';

class BottomSheetDay extends StatefulWidget {
  final Function(String) onTap;
  const BottomSheetDay({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<BottomSheetDay> createState() => _BottomSheetDayState();
}

class _BottomSheetDayState extends State<BottomSheetDay> {
  List<String> day = [
    "Senin",
    "Selasa",
    "Rabu",
    'Kamis',
    'Jumat',
    'Sabtu',
    'Ahad'
  ];
  @override
  Widget build(BuildContext context) {
    return UtilsApp.makeDismissible(
      context,
      child: DraggableScrollableSheet(
        initialChildSize: 0.5,
        maxChildSize: 0.9,
        builder: (context, scrollController) {
          return AnimatedContainer(
            duration: const Duration(seconds: 1),
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 10,
                    width: 100,
                    decoration: BoxDecoration(
                        color: ColorApp.primaryColor,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView(
                    controller: scrollController,
                    children: day.map((e) {
                      return ListTile(
                        onTap: () {
                          widget.onTap(e);
                        },
                        title: Text(e),
                        leading: const Icon(Icons.numbers),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
