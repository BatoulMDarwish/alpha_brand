import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../../components/custom_background_image.dart';
import '../../components/custom_button_next.dart';
import '../../components/custom_button_widget.dart';
import '../../components/custom_text_filed.dart';
import '../../components/custom_text_widget.dart';
import '../../controllers/cubit/cubit.dart';
import '../../controllers/cubit/states.dart';

class SignUpScreen extends StatelessWidget {
  var formKey =GlobalKey<FormState>();
  TextEditingController firstnameController=TextEditingController();
  TextEditingController lastnameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmpasswordController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();
   SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit,AppState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColor.white,
          body: Stack(
            children: [
              const CustomBackground(),
              Padding(
                padding: REdgeInsetsDirectional.only(start: 33.w,end:33.w ),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const Spacer(),
                      Image.asset(
                        'assets/images/photo_2023-05-22_13-26-08.jpg',

                      ),
                      const Spacer(),
                      CustomTextForm(
                        hinttext:AppString.FirstName,
                        isNumber: false,
                        mycontroller: firstnameController,
                        valid:(String? value) {
                   if(value!.isEmpty) {
                     return 'please enter your first name';
                      }
                        return null;}
                      ),
                      8.verticalSpace,
                      CustomTextForm(
                          hinttext:AppString.LastName,
                          isNumber: false,
                          mycontroller: lastnameController,
                          valid:(String? value) {
                            if(value!.isEmpty) {
                              return 'please enter your last name';
                            }
                            return null;}
                      ),
                      8.verticalSpace,
                      IntlPhoneField(
                        flagsButtonPadding:REdgeInsetsDirectional.only(start: 16),
                        decoration:  InputDecoration(
                          contentPadding: REdgeInsetsDirectional.only(start: 16),
                          counterText: " ",
                            filled: true,
                            fillColor: AppColor.gray,
                            hintText: AppString.PhoneNumber,
                            hintStyle: TextStyle(
                                color: AppColor.gray2,
                                fontSize: 17.sp
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            )
                        ),
                        initialCountryCode: 'SY',
                        showCountryFlag: false,
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                        dropdownIcon: const Icon(Icons.keyboard_arrow_down,color: AppColor.pink,),
                        dropdownIconPosition:IconPosition.trailing ,

                      ),
                      8.verticalSpace,
                      CustomTextForm(
                        hinttext: AppString.Password,
                        isNumber: AppCubit.get(context).isPassword,
                        mycontroller: passwordController,
                        obscureText: true,
                        iconData: AppCubit.get(context).suffix,
                        valid:(String? value) {
                          if(value!.isEmpty) {
                            return 'please enter your phone number';
                          }
                          return null;
                        },
                        suffixPressed: (){
                          AppCubit.get(context).changePasswordVisibility();
                        },
                      ),
                      8.verticalSpace,
                      CustomTextForm(
                        hinttext: AppString.ConfirmPassword,
                        isNumber: false,
                        mycontroller: confirmpasswordController,
                        valid:(String? value) {
                          if(value!.isEmpty) {
                            return 'please enter your password';
                          }
                          return null;
                        },
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: CustomButtonNext(
                              colorIcon:AppColor.pink ,
                              colorbutton: AppColor.gray,
                              icons: Icons.arrow_back_ios_new_sharp,
                              onTap: (){
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          8.horizontalSpace,
                          Flexible(
                            flex: 4,
                            child: CustomButton(
                              colorText:AppColor.white ,
                              colorbutton: AppColor.pink,
                              text: AppString.Next,
                              onTap: (){

                               if(formKey.currentState!.validate()){
                                 Navigator.pushNamed(context,"/address")
                                 ;}
                              },
                            ),
                          ),

                        ],
                      ),
                      17.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:   [
                          const CustomText(
                              text: 'Don\'t have account ?',
                              color: AppColor.gray2,
                              size: 17),
                          8.horizontalSpace,
                          InkWell(
                             onTap: (){
                               Navigator.pushNamed(context,"/signIn");
                             },
                            child: const CustomText(
                                text: AppString.Login,
                                color: AppColor.pink,
                                size: 17),
                          ),


                        ],
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
