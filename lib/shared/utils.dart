import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resource/resource/resource.dart';
import 'package:sipmm/shared/assets.dart';
import 'package:sipmm/shared/color_app.dart';

class UtilsApp {
  static showBottomSheet(BuildContext context, {Widget? child}) {
    showModalBottomSheet(
      context: context,
      enableDrag: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          child: child,
        );
      },
    );
  }

  ///
  static dialogCustom(
    BuildContext context, {
    required double height,
    required double width,
    Widget? child,
  }) {
    AlertDialog dialog = AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)), //
        content: child,
        actions: [
          CustomElevationButton(
            height: 35,
            width: 100,
            color: Colors.redAccent,
            onTap: () {
              Navigator.of(context).pop();
            },
            style: FontApp.primaryStyle.copyWith(color: Colors.white),
            text: 'Tutup',
          ),
        ]);
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return SizedBox(
          height: height,
          width: width,
          child: dialog,
        );
      },
    );
  }

  ///
  ///
  ///
  static Widget makeDismissible(BuildContext context,
          {required Widget child}) =>
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {},
          child: child,
        ),
      );

  ///
  ///
  ///alert dialog loading
  static Future<dynamic> alertLoading(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ), //this right here
            child: SizedBox(
              height: 130,
              width: 100,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Please wait",
                      style: FontApp.primaryStyle
                          .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                                ColorApp.primaryColor),
                          ),
                        ),
                        const SizedBox(width: 20),
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'Loading...',
                              textAlign: TextAlign.center,
                              textStyle:
                                  FontApp.primaryStyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  ///===================== alert conffirmation

  static Future<void> alertConfirmation(BuildContext context,
      {Function? onTap,
      String? btnCancel,
      String? btnConfirm,
      String? content}) async {
    AlertDialog alert = AlertDialog(
      title: Text(
        "Dialog confirmation",
        style: FontApp.primaryStyle
            .copyWith(fontSize: 13, fontWeight: FontWeight.bold),
      ),
      content: Text(
        content!,
        style: FontApp.primaryStyle
            .copyWith(fontSize: 13, fontWeight: FontWeight.bold),
      ),
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)), //t
      actions: [
        SizedBox(
          height: 35,
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))))),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(btnCancel!,
                style: FontApp.primaryStyle.copyWith(fontSize: 13)),
          ),
        ),
        CustomElevationButton(
          height: 35,
          width: 100,
          color: Colors.redAccent,
          onTap: () {
            if (onTap != null) {
              onTap();
              Navigator.of(context).pop();
            }
          },
          style: FontApp.primaryStyle.copyWith(color: Colors.white),
          text: btnConfirm,
        ),
      ],
    );
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 130,
            width: 100,
            child: alert,
          );
        });
  }

  /// Alert notification
  /// [FCM]
  static Future<void> alertNotification(BuildContext context,
      {String? title, String? image, String? body, String? url}) async {
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      title: Text(
        title!,
        style: const TextStyle(fontSize: 15),
      ),
      content: image != null
          ? SizedBox(
              height: 200,
              child: Column(
                children: [
                  // ignore: unnecessary_null_comparison
                  if (image != null)
                    SizedBox(height: 150, child: Image.network(image))
                  else
                    Container(),
                  Expanded(
                      child: body != null
                          ? Text(
                              body,
                              style: const TextStyle(fontSize: 12),
                            )
                          : Container()),
                ],
              ),
            )
          : Text(body!, style: const TextStyle(fontSize: 12)),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Nanti',
              style: TextStyle(color: ColorApp.primaryColor),
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              'Update',
              style: TextStyle(color: ColorApp.primaryColor),
            )),
      ],
    );
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  /// Alert notification [LocalNotification]
  ///
  static Future<void> alertLocalNotif(
    BuildContext context, {
    String? body,
  }) async {
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      title: const Text(
        "Notification",
        style: TextStyle(fontSize: 18),
      ),
      content: Text(body!, style: const TextStyle(fontSize: 15)),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Ok',
              style: TextStyle(color: ColorApp.primaryColor),
            )),
      ],
    );
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  static Future<void> selectDate(
      BuildContext context, Function(DateTime) onTap) async {
    DateTime? selectedDate = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015),
      initialDatePickerMode: DatePickerMode.day,
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      onTap(selectedDate);
    }
  }

  static Future<XFile?> pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    return pickedFile;
  }

  static Future<List<PlatformFile>?> pickFileForWeb() async {
    List<PlatformFile>? _paths;
    try {
      _paths = (await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: false,
        onFileLoading: (FilePickerStatus status) => debugPrint('$status'),
        allowedExtensions: ['png', 'jpg', 'jpeg'],
      ))
          ?.files;
    } on PlatformException catch (e) {
      debugPrint('Unsupported operation ${e.toString()}');
    } catch (e) {
      debugPrint(e.toString());
    }
    return _paths;
  }

  static Widget generateDashedDivider(double width) {
    int n = width ~/ 5;
    return Row(
      children: List.generate(
          n,
          (index) => (index % 2 == 0)
              ? Container(
                  height: 2,
                  width: width / n,
                  color: Color(0xFFE4E4E4),
                )
              : SizedBox(
                  width: width / n,
                )),
    );
  }

  static ImageProvider<Object> getImageProvider(
      BuildContext context, File? file) {
    if (kIsWeb) {
      if (file != null) {
        return NetworkImage(file.path);
      } else {
        return const NetworkImage(
            'https://via.placeholder.com/150/d9d8d7/808080?Text=Pembayaran');
      }
    } else {
      if (file != null) {
        return FileImage(file);
      } else {
        return const NetworkImage(
            'https://via.placeholder.com/150/d9d8d7/808080?Text=Pembayaran');
      }
    }
  }
}
