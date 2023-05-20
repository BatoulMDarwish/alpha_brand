import 'package:alpha_brand_ui/core/utils/app_color.dart';
import 'package:alpha_brand_ui/core/utils/app_string.dart';
import 'package:alpha_brand_ui/feature/presentation/components/custom_text_widget.dart';
import 'package:alpha_brand_ui/feature/presentation/components/product/appbar_widget.dart';
import 'package:alpha_brand_ui/feature/presentation/components/product/custom_listView_cart.dart';
import 'package:alpha_brand_ui/feature/presentation/controllers/cubit/cubit.dart';
import 'package:alpha_brand_ui/feature/presentation/controllers/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit,AppState>(
      builder: (context, state) {
        return   Scaffold(
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
          bottomNavigationBar: BottomAppBar(
            child: RSizedBox(
              height: 150,
              child: Column(
                children: [
                  Container(
                   color: AppColor.pink,
                    width: double.infinity,
                    height: 70.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const CustomText(text: AppString.TotalPrice, color: AppColor.white, size: 15),
                        4.horizontalSpace,
                        const CustomText(text: '2.250.500', color: AppColor.white, size: 15),
                       4.horizontalSpace,
                       const  CustomText(text: 'SYP', color: AppColor.white, size: 15),
                        Spacer(),
                        InkWell(
                          child: Padding(
                            padding: REdgeInsetsDirectional.only(top: 12,bottom: 15,end: 22),
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(7)),
                                color: AppColor.white,
                              ),

                              height: 100.h,
                              width: 112.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children:  const [
                                  CustomText(text: 'Check Out', color: AppColor.black, size: 17),
                                  Icon(Icons.arrow_forward_ios,color: AppColor.pink,size: 15,)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15.0),
                    ),
                    child: BottomNavigationBar(
                        fixedColor: AppColor.pink,
                        backgroundColor: AppColor.gray,
                        type: BottomNavigationBarType.fixed,
                        currentIndex:AppCubit.get(context).currentIndex ,
                        items:const [
                          BottomNavigationBarItem(

                            icon: Icon(Icons.home),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.category_sharp,),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.star_border_purple500_sharp,),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.shopping_cart_rounded,),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.perm_identity,),
                            label: '',
                          ),
                        ],
                      onTap: (index){
                          AppCubit.get(context).changeBottomNavigationBar(index);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },

    );
  }
}
