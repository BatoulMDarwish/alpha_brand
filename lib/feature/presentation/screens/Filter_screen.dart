import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_string.dart';
import '../components/custom_button_widget.dart';
import '../components/custom_text_widget.dart';
import '../components/product/appbar_widget.dart';
import '../components/product/button_return.dart';
import '../components/product/dropdown_button.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildItemAppBar(AppString.Filters,[const ButtonReturn()],),
      body: Padding(
        padding: REdgeInsetsDirectional.only(bottom: 97),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.end,
          children: [
           TextButton(
               onPressed: (){},
               child: const CustomText(
                 text: AppString.Delete,
                 size: 17,
                  color: AppColor.pink,
               )
           ),
            Padding(
              padding: REdgeInsetsDirectional.only(start: 21,end: 21),
              child: Row(
                children: [
                   DropDownButtonWidget(
                    item1: AppString.Color,
                    item2:'color2' ,
                    item3: 'color3',
                  ),
                  22.horizontalSpace,
                  DropDownButtonWidget(
                    item1: AppString.Barnd,
                    item2:'color1' ,
                    item3: 'color1',
                  ),
                ],
              ),
            ),
            const RSizedBox(
              height: 12,
            ),
            Padding(
              padding: REdgeInsetsDirectional.only(start: 21,end: 21),
              child: Row(
                children: [
                   DropDownButtonWidget(
                    item1:AppString.Category,
                    item2:'color1' ,
                    item3: 'color1',
                  ),
                  22.horizontalSpace,
                   DropDownButtonWidget(
                    item1: AppString.Size,
                    item2:'color1' ,
                    item3: 'color1',
                  ),
                ],
              ),
            ),
            Spacer(),
            Center(
              child: CustomButton(
                  colorText: AppColor.white,
                  colorbutton: AppColor.pink,
                  text: AppString.Search, onTap: (){}),
            ),
          ],
        ),
      ),
    );
  }
}
