import 'package:flutter/material.dart';
import 'package:sipmm/shared/shared.dart';

class ScheduleEmpty extends StatelessWidget {
  const ScheduleEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tidak ada jadwal pelajaran',
              style: FontApp.primaryStyle
                  .copyWith(fontSize: 15, color: Colors.grey.shade700))
        ],
      ),
    );
  }
}
