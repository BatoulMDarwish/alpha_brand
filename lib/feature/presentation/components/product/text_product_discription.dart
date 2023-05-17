import 'package:alpha_brand_ui/feature/presentation/components/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';

class TextProductDisription extends StatelessWidget {
  final String image;
  final String text;
  const TextProductDisription({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image),
        RSizedBox( width: 7.33,),
        CustomText(text: text, color: AppColor.gray2, size: 15)
      ],
    );
  }
}
