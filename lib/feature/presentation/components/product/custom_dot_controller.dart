import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_color.dart';
import '../../../data/static/static.dart';
import '../../controllers/cubit/cubit.dart';
import '../../controllers/cubit/states.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AppCubit ,AppState>(
        builder: (context, state) =>
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  ...List.generate(
                    OnBoardingList.length,
                        (index) =>AnimatedContainer(
                      margin: const EdgeInsets.only(right: 5),
                      duration:const Duration(milliseconds: 900) ,
                      width: AppCubit.get(context).currentPage==index?12:8,
                      height:AppCubit.get(context).currentPage==index?12:8,
                      decoration:BoxDecoration(
                          color: AppCubit.get(context).currentPage==index?AppColor.pink:AppColor.gray2,
                          borderRadius: BorderRadius.circular(10)),
                    ) ,
                  )
                ]

            ));
  }
}