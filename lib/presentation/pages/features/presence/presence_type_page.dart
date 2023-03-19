
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sipmm/application/presence/presence_type/presence_type_bloc.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/features/presence/widgets/item_type.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';
import 'package:sipmm/presentation/routes/app_router.dart';

import 'widgets/failure_display_type.dart';
import 'widgets/item_empty.dart';

part 'components/body_presence_type_page.dart';

class PresenceTypePage extends StatelessWidget {
  const PresenceTypePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyPresenceTypePage(),
    );
  }
}
