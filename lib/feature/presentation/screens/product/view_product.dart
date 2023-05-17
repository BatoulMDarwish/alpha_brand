import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../../components/custom_button_widget.dart';
import '../../components/product/custom_discrption_product.dart';
import '../../components/product/listview_product.dart';
import '../../components/product/onboarding_view.dart';
class ViewProduct extends StatelessWidget {
  const ViewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children:  [
            OnBoardingView(),
            Container(
              color:AppColor.pink,
              height: 5.h,
            ),
            17.verticalSpace,
          const CustomDiscription(),
            const ListViewProduct(),
          ],
        ),
      ),
      bottomNavigationBar: Container(

        decoration: const BoxDecoration(
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.gray2,
              blurRadius:7.5
            )
          ],
          borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft:Radius.circular(12) ),
        ),
        height: 107.h,
        child: Padding(
          padding: REdgeInsetsDirectional.only(start: 20,end: 20),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                  child: CustomButton(
                      colorText: AppColor.black,
                      colorbutton: AppColor.gray,
                      text: AppString.ContactUs,
                      onTap: (){})
              ),
              12.horizontalSpace,
              Flexible(
                  flex: 1,
                  child: CustomButton(
                      colorText: AppColor.white,
                      colorbutton: AppColor.pink,
                      text: AppString.AddToCard,
                      onTap: (){
                        Navigator.pushNamed(context, "/filters");
                      })
              ),
            ],
          ),
        ),
      ),
    );
  }
}
