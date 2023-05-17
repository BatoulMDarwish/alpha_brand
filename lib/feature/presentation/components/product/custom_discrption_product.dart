
import 'package:alpha_brand_ui/core/utils/app_color.dart';
import 'package:alpha_brand_ui/feature/presentation/components/product/text_product_discription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_string.dart';
import '../custom_text_widget.dart';

class CustomDiscription extends StatelessWidget {
  const CustomDiscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsetsDirectional.only(start: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
              text: AppString.CreamybasicHoodie,
              color: AppColor.black,
              size:20
          ),
          const RSizedBox(
            height: 6,
          ),
          Row(
            children: const [
              TextProductDisription(
                image:'assets/images/icon2.jpg' ,
                text: AppString.PullBear,
              ),
              RSizedBox(width: 18.88,),
              TextProductDisription(
                image:'assets/images/icon1.jpg' ,
                text: AppString.Black,
              ),
            ],
          ),
          const RSizedBox(
            height: 13,
          ),
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
          const RSizedBox(
            height: 16,
          ),
          const CustomText(
              text: AppString.InformationYou,
              color: AppColor.black,
              size:17
          ),
          const RSizedBox(
            height: 4,
          ),
          const TextProductDisription(
            image:'assets/images/icon3.jpg' ,
            text: AppString.Deliveriestake,
          ),
          const RSizedBox(
            height: 4,
          ),
          const TextProductDisription(
            image:'assets/images/icon4.jpg' ,
            text: AppString.Returnorexchangetheproduct,
          ),
          const RSizedBox(
            height: 4,
          ),
          const TextProductDisription(
            image:'assets/images/icon5.jpg' ,
            text: AppString.PriceCan,
          ),
          const RSizedBox(
            height: 12,
          ),
          const CustomText(
              text: AppString.Youmayalsolike,
              color: AppColor.black,
              size:17
          ),
        ],
      ),
    );
  }
}
