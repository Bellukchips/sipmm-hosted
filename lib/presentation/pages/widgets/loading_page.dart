import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sipmm/shared/shared.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({
    super.key,
    this.isSubmitted = false,
    this.valueProgress = 0,
    required this.isNotSubmit,
  });
  final bool isSubmitted;
  final bool isNotSubmit;
  final double valueProgress;
  @override
  Widget build(BuildContext context) {
    if (!isNotSubmit) {
      // return IgnorePointer(
      //   ignoring: !isSubmitted,
      //   child: Container(
      //     width: MediaQuery.of(context).size.width,
      //     height: MediaQuery.of(context).size.height,
      //     color: isSubmitted
      //         ? Colors.black.withOpacity(0.8)
      //         : Colors.transparent,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         SizedBox(
      //           height: 60,
      //           width: 60,
      //           child: CircularProgressIndicator(
      //             value: value.progress,
      //             valueColor:
      //                 AlwaysStoppedAnimation<Color>(ColorApp.primaryColor),
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 15,
      //         ),
      //         Text(
      //           "${(valueProgress * 100).toStringAsFixed(2)} %",
      //           style: FontApp.primaryStyle
      //               .copyWith(fontSize: 15, color: Colors.white),
      //         ),
      //         const SizedBox(
      //           height: 30,
      //         ),
      //       ],
      //     ),
      //   ),
      // );
      return IgnorePointer(
        ignoring: !isSubmitted,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color:
              isSubmitted ? Colors.black.withOpacity(0.8) : Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      valueColor:
                          AlwaysStoppedAnimation<Color>(ColorApp.primaryColor),
                    ),
                  ),
                  const SizedBox(width: 20),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Loading...',
                        textAlign: TextAlign.center,
                        textStyle: FontApp.primaryStyle
                            .copyWith(fontSize: 15, color: Colors.white),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      valueColor:
                          AlwaysStoppedAnimation<Color>(ColorApp.primaryColor),
                    ),
                  ),
                  const SizedBox(width: 20),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Loading...',
                        textAlign: TextAlign.center,
                        textStyle: FontApp.primaryStyle.copyWith(fontSize: 15),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }
  }
}
