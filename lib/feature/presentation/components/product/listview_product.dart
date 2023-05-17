import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../custom_text_widget.dart';

class ListViewProduct extends StatelessWidget {
  const ListViewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsetsDirectional.only(start: 20,end: 20),
      child: SizedBox(
        height: 300.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                            'assets/images/girls2.jpg',
                          width: 145.w,
                          height: 187.h,
                        ),
                        const Positioned(
                          top: 4,
                          right: 10,
                          child: CircleAvatar(
                            radius:13 ,
                            backgroundColor: AppColor.gray,
                            child: Icon(
                              Icons.star,
                              color: AppColor.pink,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const CustomText(
                        text: AppString.CreamybasicHoodie,
                        color: AppColor.black,
                        size: 13
                    ),
                    const CustomText(
                        text: '150.500 SYP',
                        color: AppColor.gray2,
                        size: 13
                    ),
                    const CustomText(
                        text: AppString.PullBear,
                        color: AppColor.gray2,
                        size: 13
                    ),
                  ],
                ),
            separatorBuilder:(context, index) =>  const RSizedBox(
              width: 19,
            ),
            itemCount: 5),
      ),
    )
    ;
  }
}
