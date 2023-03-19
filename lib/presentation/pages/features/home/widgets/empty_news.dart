import 'package:flutter/material.dart';
import 'package:sipmm/shared/shared.dart';

class EmptyNews extends StatelessWidget {
  final bool isOld;
  const EmptyNews({
    Key? key,
    required this.isOld,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isOld
              ? Text('Tidak ada pemberitahuan terbaca',
                  style: FontApp.primaryStyle
                      .copyWith(fontSize: 15, color: Colors.grey.shade700))
              : Text('Tidak ada pemberitahuan terbaru',
                  style: FontApp.primaryStyle
                      .copyWith(fontSize: 15, color: Colors.grey.shade700)),
        ],
      ),
    );
  }
}
