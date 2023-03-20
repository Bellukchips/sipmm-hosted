import 'dart:convert';
import 'dart:io';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resource/resource.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sipmm/application/payment/save_payment/save_payment_bloc.dart';
import 'package:sipmm/domain/payment/payment_form.dart';
import 'package:sipmm/domain/payment/payment_method.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/pages/widgets/loading_page.dart';

import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';
import 'package:sipmm/shared/web_view_model.dart';

import 'widgets/bottom_sheet_payment.dart';

part 'components/body_form_payment.dart';

class FormPaymentPage extends StatefulWidget {
  const FormPaymentPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FormPaymentPage> createState() => _FormPaymentPageState();
}

class _FormPaymentPageState extends State<FormPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        getIt<AppRouter>()
            .replace(HomeRoute(selectMenu: MenuHome.pembayaran));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorApp.primaryColor,
          title: Text(Strings.formPembayaran),
          leading: IconButton(
            onPressed: () {
            getIt<AppRouter>()
                  .replace(HomeRoute(selectMenu: MenuHome.pembayaran));
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: const BodyFormPayment(),
      ),
    );
  }
}
