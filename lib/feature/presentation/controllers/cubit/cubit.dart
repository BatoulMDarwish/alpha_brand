import 'package:alpha_brand_ui/feature/presentation/controllers/cubit/states.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitailState());

  static AppCubit get(context) => BlocProvider.of(context);

  late PageController pageController = PageController();
  int currentPage = 0;
 String dropDown="";
  void onPageChanged(int index) {
    currentPage = index;
    emit(OnBoardingOnPageChangedState());
  }
  IconData suffix=Icons.visibility_outlined;
  bool isPassword=true;
  void changePasswordVisibility(){
    isPassword=!isPassword;
    suffix=isPassword? Icons.visibility_off_outlined:Icons.visibility_outlined;

    emit(ChangePasswordVisibiltyState());

  }
}
