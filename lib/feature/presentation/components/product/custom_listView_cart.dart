import 'package:alpha_brand_ui/core/utils/app_color.dart';
import 'package:alpha_brand_ui/core/utils/app_string.dart';
import 'package:alpha_brand_ui/feature/presentation/components/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListView extends StatelessWidget {
  final String image;
  const CustomListView({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          11.horizontalSpace,
          Padding(
            padding:REdgeInsetsDirectional.only(top:5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const CustomText(text: AppString.CreamybasicHoodie, color: AppColor.black, size: 15),
                const CustomText(text: AppString.BlackLarg, color: AppColor.gray2, size: 15),
                29.verticalSpace,
                Container(
                  width: 130.w,
                  height: 31.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: AppColor.gray,
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CustomText(text: '275.000  ', color: AppColor.pink, size: 17),
                      CustomText(text: 'SYP', color: AppColor.black, size: 17),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: REdgeInsetsDirectional.only(top: 0),
            height: 30.h,
            width: 30.w,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              color: AppColor.pink.withOpacity(0.1),
            ),
            child: Icon(
                Icons.delete_forever_outlined,color: AppColor.pink,),
          )
        ],
      ),
    );
  }
}
