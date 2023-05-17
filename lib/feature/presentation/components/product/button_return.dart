import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';

class ButtonReturn extends StatelessWidget {
  const ButtonReturn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){},
      child: Padding(
        padding:REdgeInsetsDirectional.only(
            top: 53,
            end: 21,
            bottom: 13
        ),
        child: Container(
          height: 31.h,
          width: 31.w,
          decoration: const BoxDecoration(
              color: AppColor.black,
              borderRadius: BorderRadius.all(Radius.circular(7))
          ),
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: AppColor.white,
            size: 12,
          ),
        ),
      ),
    );
  }
}
