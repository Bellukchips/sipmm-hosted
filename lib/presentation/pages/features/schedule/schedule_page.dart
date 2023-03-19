import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resource/resource.dart';
import 'package:sipmm/application/schedule/category_schedule/category_schedule_bloc.dart';
import 'package:sipmm/application/schedule/schedule_watcher_bloc.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';
import 'package:sipmm/presentation/pages/features/schedule/widgets/display_failure_schedule.dart';
import 'package:sipmm/shared/shared.dart';

import 'widgets/bottom_sheet_category_schedule.dart';
import 'widgets/bottom_sheet_day.dart';
import 'widgets/item_schedule.dart';
import 'widgets/schedule_empty.dart';
part 'components/body_schedule_page.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return const BodySchedulePage();
  }
}
