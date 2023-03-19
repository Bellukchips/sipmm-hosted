import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resource/resource/resource.dart';
import 'package:sipmm/application/memorize_assessment/memorize_assessment_bloc.dart';

import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/features/memorize_assessment/widgets/item_memorize.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';
import 'package:sipmm/shared/shared.dart';

import 'widgets/bottom_sheet_surah.dart';
import 'widgets/empty_memo.dart';
import 'widgets/failure_memo.dart';
part 'components/body_memorize.dart';

class MemorizeAssessmentPage extends StatelessWidget {
  const MemorizeAssessmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyMemorize(),
    );
  }
}
