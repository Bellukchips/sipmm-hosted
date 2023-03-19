import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resource/resource.dart';

import 'package:sipmm/application/payment/method/payment_method_bloc.dart';
import 'package:sipmm/domain/payment/payment_method.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/shared/shared.dart';

class BottomSheetPaymentMethod extends StatefulWidget {
  const BottomSheetPaymentMethod({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final Function(PaymentMethod) onTap;
  @override
  State<BottomSheetPaymentMethod> createState() =>
      _BottomSheetPaymentMethodState();
}

class _BottomSheetPaymentMethodState extends State<BottomSheetPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentMethodBloc>()
        ..add(const PaymentMethodEvent.getPaymentMethod()),
      child: BlocBuilder<PaymentMethodBloc, PaymentMethodState>(
        builder: (context, state) {
          return state.map(
            initial: (value) => UtilsApp.makeDismissible(
              context,
              child: DraggableScrollableSheet(
                initialChildSize: 0.5,
                maxChildSize: 0.9,
                builder: (context, scrollController) {
                  return AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            ColorApp.primaryColor),
                      ),
                    ),
                  );
                },
              ),
            ),
            loadInProgress: (value) => UtilsApp.makeDismissible(
              context,
              child: DraggableScrollableSheet(
                initialChildSize: 0.5,
                maxChildSize: 0.9,
                builder: (context, scrollController) {
                  return AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            ColorApp.primaryColor),
                      ),
                    ),
                  );
                },
              ),
            ),
            loadSuccess: (value) {
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
                        mainAxisSize: MainAxisSize.max,
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
                            child: ListView.builder(
                              controller: scrollController,
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: value.payment.length,
                              itemBuilder: (context, index) {
                                final data = value.payment[index];

                                return ListTile(
                                  onTap: () {
                                    widget.onTap(data);
                                  },
                                  title: Text(
                                      '${data.paymentName} / ${data.method}/ ${data.mediaPayment}/ ${formatCurrency.format(double.parse(data.total!))}'),
                                  leading: const Icon(Icons.numbers),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
            loadFailure: (value) => UtilsApp.makeDismissible(
              context,
              child: DraggableScrollableSheet(
                initialChildSize: 0.5,
                maxChildSize: 0.9,
                builder: (context, scrollController) {
                  return AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Center(
                        child: Text(value.failure.map(
                      unexpected: (value) => 'Error Tidak di ketahui',
                      serverError: (value) => 'Something went wrong',
                      unauthenticated: (value) => 'Unauthenticated',
                    ))),
                  );
                },
              ),
            ),
            loadEmpty: (value) => UtilsApp.makeDismissible(
              context,
              child: DraggableScrollableSheet(
                initialChildSize: 0.5,
                maxChildSize: 0.9,
                builder: (context, scrollController) {
                  return AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: const Center(
                      child: Text('Tidak ada data'),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
