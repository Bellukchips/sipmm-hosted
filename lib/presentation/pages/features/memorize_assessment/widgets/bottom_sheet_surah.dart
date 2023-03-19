import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sipmm/application/surah/surah_bloc.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/shared/shared.dart';

class BottomSheetSurah extends StatefulWidget {
  const BottomSheetSurah({super.key, required this.onTap});
  final Function(String) onTap;

  @override
  State<BottomSheetSurah> createState() => _BottomSheetSurahState();
}

class _BottomSheetSurahState extends State<BottomSheetSurah> {
  ///
  final TextEditingController searchController = TextEditingController();

  ///
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SurahBloc>()..add(const SurahEvent.getSurah()),
      child: BlocBuilder<SurahBloc, SurahState>(
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
                          // tambahkan widget TextField untuk input teks
                          TextField(
                            controller: searchController,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.search,
                                color: ColorApp.primaryColor,
                              ),
                              hintText: Strings.cariSurah,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: ColorApp.primaryColor),
                              ),
                              border: const OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: ColorApp.primaryColor),
                              ),
                            ),
                            onChanged: (text) {
                              // panggil setState untuk memfilter data
                              setState(() {});
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ListView.builder(
                              controller: scrollController,
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: value.surah
                                  .where((surah) => surah.nama_latin!
                                      .toLowerCase()
                                      .contains(
                                          searchController.text.toLowerCase()))
                                  .length,
                              itemBuilder: (context, index) {
                                final data = value.surah
                                    .where((surah) => surah.nama_latin!
                                        .toLowerCase()
                                        .contains(searchController.text
                                            .toLowerCase()))
                                    .toList()[index];

                                return ListTile(
                                  onTap: () {
                                    widget.onTap('${data.nama_latin}');
                                  },
                                  title: Text('${data.nama_latin}'),
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
