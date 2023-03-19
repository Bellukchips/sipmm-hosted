import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:resource/resource.dart';

import 'package:sipmm/domain/permit/permit.dart';
import 'package:sipmm/shared/shared.dart';

class ItemPermit extends StatelessWidget {
  const ItemPermit({
    Key? key,
    required this.screen,
    required this.permit,
    required this.onEndSlide,
    required this.onStartSlide,
  }) : super(key: key);

  final Size screen;
  final Permit permit;
  final Function onEndSlide;
  final Function(Permit) onStartSlide;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: screen.width,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(15),
      //   border: Border.all(
      //     color: permit.status == null
      //         ? ColorApp.yellowDark
      //         : permit.status == 1
      //             ? ColorApp.primaryColor
      //             : Colors.red,
      //   ),
      // ),
      child: Slidable(
        endActionPane: permit.status == null
            ? ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    // An action can be bigger than the others.
                    onPressed: (context) {
                      onEndSlide();
                    },
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Hapus',
                  ),
                ],
              )
            : null,
        startActionPane: permit.status == null
            ? ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    // An action can be bigger than the others.
                    onPressed: (context) {
                      onStartSlide(permit);
                    },
                    backgroundColor: ColorApp.yellowAccent,
                    foregroundColor: Colors.white,
                    icon: Icons.edit,
                    label: 'Ubah',
                  ),
                ],
              )
            : null,
        child: MaterialButton(
          onPressed: () {
            UtilsApp.showBottomSheet(
              context,
              child: UtilsApp.makeDismissible(
                context,
                child: DraggableScrollableSheet(
                  initialChildSize: 0.5,
                  maxChildSize: 0.9,
                  builder: (context, scrollController) {
                    return Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 10,
                            width: 100,
                            decoration: BoxDecoration(
                                color: ColorApp.primaryColor,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Expanded(
                            child: ListView(
                                controller: scrollController,
                              physics: const BouncingScrollPhysics(),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    '${permit.permit_type}',
                                    style: FontApp.primaryStyle.copyWith(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    '${permit.description}',
                                    style: FontApp.primaryStyle
                                        .copyWith(fontSize: 15),
                                    textAlign: TextAlign.justify,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          },
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(15.0),
          // ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - (2 * 60) - 40,
                      child: Text(
                        '${permit.permit_type}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: FontApp.primaryStyle.copyWith(
                            fontSize: Dimens.dp18, fontWeight: FontWeight.w400),
                      ),
                    ),
                    permit.status == null
                        ? Icon(
                            Icons.pending_actions,
                            color: ColorApp.yellowDark,
                          )
                        : permit.status == 1
                            ? Icon(
                                Icons.check,
                                color: ColorApp.primaryColor,
                              )
                            : const Icon(
                                Icons.close,
                                color: Colors.red,
                              )
                  ],
                )),
                Expanded(
                    child: Text(
                  '${permit.permit_date}',
                  style: FontApp.primaryStyle.copyWith(
                      fontSize: Dimens.dp12, fontWeight: FontWeight.w300),
                )),
                Expanded(
                    child: Text(
                  '${permit.description}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: FontApp.primaryStyle.copyWith(
                      fontSize: Dimens.dp14, fontWeight: FontWeight.w300),
                )),
                UtilsApp.generateDashedDivider(
                    MediaQuery.of(context).size.width - 2 * 35)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
