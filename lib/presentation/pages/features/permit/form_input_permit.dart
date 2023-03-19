import 'package:another_flushbar/flushbar_helper.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:resource/resource.dart';
import 'package:sipmm/application/permit/permit_actor/permitactor_bloc.dart';
import 'package:sipmm/domain/core/value/general/date_value_object.dart';
import 'package:sipmm/domain/core/value/general/single_line_text_value_object.dart';
import 'package:sipmm/domain/core/value/general/text_value_object.dart';
import 'package:sipmm/domain/permit/permit.dart';
import 'package:sipmm/domain/permit/permit_form.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';
part 'components/body_form_input_permit.dart';

class FormInputPermitPage extends StatelessWidget {
  final bool? isHome;
  final Permit editedPermit;
  final bool? isEdit;
  const FormInputPermitPage(
      {super.key,
      this.isHome,
      required this.editedPermit,
      this.isEdit = false});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isHome!) {
          getIt<AppRouter>()
              .replace(HomeRoute(selectMenu: MenuHome.dashboard));
        } else {
         getIt<AppRouter>()
              .replace(HomeRoute(selectMenu: MenuHome.perizinan));
        }
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                if (isHome!) {
                  getIt<AppRouter>()
                      .replace(HomeRoute(selectMenu: MenuHome.dashboard));
                } else {
              getIt<AppRouter>()
                      .replace(HomeRoute(selectMenu: MenuHome.perizinan));
                }
              },
              icon: const Icon(Icons.arrow_back)),
          elevation: 0,
          backgroundColor: ColorApp.primaryColor,
          title: Text(Strings.formPermit),
        ),
        body: SafeArea(
            child: BodyFormInputPermit(
          isEdit: isEdit!,
          permit: editedPermit,
        )),
      ),
    );
  }
}
