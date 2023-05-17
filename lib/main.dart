import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feature/presentation/controllers/cubit/cubit.dart';
import 'feature/presentation/screens/Filter_screen.dart';
import 'feature/presentation/screens/auth/sign_in_screen.dart';
import 'feature/presentation/screens/auth/splash_screen.dart';
import 'feature/presentation/screens/auth/welcom_screen.dart';
import 'feature/presentation/screens/product/view_product.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return  BlocProvider(
          create: (BuildContext context)=>AppCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                fontFamily: 'Poppins'
            ),
            initialRoute: "/",
            routes: {
              "/": (context) => const SplashScreen(),
              "/welcome": (context) => const WelcomeScreen(),
              "/signIn":(context)=>  SignInScreen(),
              "/productView":(context)=>const ViewProduct(),
              "/filters":(context) => const FilterScreen(),
            },
          ),
        );
      },
    );
  }
}

