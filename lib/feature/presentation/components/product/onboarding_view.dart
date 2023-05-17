import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'button_return.dart';
import 'custom_dot_controller.dart';
import 'custom_slider.dart';

class OnBoardingView extends StatelessWidget {
   OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RSizedBox(
          height: 559,
            width: 432,
            child: CustomSliderOnBoarding()),
        const Positioned(
            right: 0,
            child: ButtonReturn()
        ),
      const Positioned(
        left: 0,
          right: 0,
          bottom: 18,
          child: CustomDotControllerOnBoarding())
      ],
    );
  }
}
