import 'package:flutter/material.dart';
import 'package:sipmm/shared/shared.dart';

class EmptyPermit extends StatelessWidget {
  const EmptyPermit({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tidak ada history perizinan',
              style: FontApp.primaryStyle
                  .copyWith(fontSize: 15, color: Colors.grey.shade700))
        ],
      ),
    );
  }
}
