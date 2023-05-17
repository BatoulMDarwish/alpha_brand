
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/static/static.dart';
import '../../controllers/cubit/cubit.dart';
import '../../controllers/cubit/states.dart';

class CustomSliderOnBoarding extends StatelessWidget{
   CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit ,AppState>(
        builder: (context, state) =>
      PageView.builder(
      controller:AppCubit.get(context).pageController,
      onPageChanged: (val){
        AppCubit.get(context).onPageChanged(val);
      },
        itemCount: OnBoardingList.length,
        itemBuilder: (context,i)=>
            Image.asset(
              OnBoardingList[i].image!,
              fit: BoxFit.cover,
            ),

    ));
  }
}
