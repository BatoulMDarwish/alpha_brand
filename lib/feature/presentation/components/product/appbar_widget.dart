import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../custom_text_widget.dart';
import 'button_return.dart';

AppBar buildItemAppBar(
final String title
){
  return  AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 95.h,
    // bottom: ,
    shape:   const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)
        )),
    backgroundColor: AppColor.pink,
    title: Padding(
      padding:REdgeInsetsDirectional.only(
          top: 53,
          start: 21,
          bottom: 13
      ),
      child:  CustomText(
        text: title,
        color: AppColor.white,
        size: 20,
      ),
    ),
    actions: const [
      ButtonReturn(),
    ],
  );
}