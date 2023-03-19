import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sipmm/application/schedule/category_schedule/category_schedule_bloc.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/shared/shared.dart';

class BottomSheetCategorySchedule extends StatefulWidget {
  final Function(String) onTap;
  const BottomSheetCategorySchedule({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<BottomSheetCategorySchedule> createState() =>
      _BottomSheetCategoryScheduleState();
}

class _BottomSheetCategoryScheduleState
    extends State<BottomSheetCategorySchedule> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryScheduleBloc>()
        ..add(const CategoryScheduleEvent.watchCategory()),
      child: BlocBuilder<CategoryScheduleBloc, CategoryScheduleState>(
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
            loadCategory: (value) {
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
                              itemCount: value.category.length,
                              itemBuilder: (context, index) {
                                final data = value.category[index];
                                return ListTile(
                                  onTap: () {
                                    widget.onTap('${data.category}');
                                  },
                                  title: Text('${data.category}'),
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
