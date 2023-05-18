import 'package:alpha_brand_ui/core/utils/app_color.dart';
import 'package:alpha_brand_ui/core/utils/app_string.dart';
import 'package:alpha_brand_ui/feature/presentation/components/custom_text_widget.dart';
import 'package:alpha_brand_ui/feature/presentation/components/product/appbar_widget.dart';
import 'package:alpha_brand_ui/feature/presentation/components/product/custom_listView_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildItemAppBar(AppString.Cart, [
            InkWell(
              child: Padding(
                padding: REdgeInsetsDirectional.only(top: 52,bottom: 15,end: 22),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: AppColor.white,
                  ),

                  height: 28.h,
                  width: 135.w,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  const [
                      CustomText(text: 'Purchases', color: AppColor.black, size: 17),
                      Icon(Icons.refresh,color: AppColor.pink,)
                    ],
                  ),
                ),
              ),
            )
          ]),
      body: Padding(
        padding: REdgeInsetsDirectional.only(top: 20),
        child: ListView.separated(
            itemBuilder:(context, index) =>const CustomListView(image:'assets/images/photo_2023-05-18_13-33-35 (2).jpg' ),
            separatorBuilder:(context, index) => 9.verticalSpace,
            itemCount: 3
        ),
      ),
    );
  }
}
