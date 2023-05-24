import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../../components/custom_background_image.dart';
import '../../components/custom_button_next.dart';
import '../../components/custom_button_widget.dart';
import '../../components/custom_text_filed.dart';
import '../../components/custom_text_widget.dart';
import '../../controllers/cubit/cubit.dart';
import '../../controllers/cubit/states.dart';

class AddressScreen extends StatelessWidget {
  var formKey =GlobalKey<FormState>();
  TextEditingController addressController=TextEditingController();
  TextEditingController streetController=TextEditingController();
  AddressScreen({Key? key}) : super(key: key);

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
                        'assets/images/address.jpg',

                      ),
                      const Spacer(),
                      CustomTextForm(
                          hinttext:'Address',
                          isNumber: false,
                          mycontroller: addressController,
                          valid:(String? value) {
                            if(value!.isEmpty) {
                              return 'please enter your phone number';
                            }
                            return null;}
                      ),
                      16.verticalSpace,
                      CustomTextForm(
                          hinttext:'Street',
                          isNumber: false,
                          mycontroller: addressController,
                          valid:(String? value) {
                            if(value!.isEmpty) {
                              return 'please enter your phone number';
                            }
                            return null;}
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
                                  Navigator.pushNamed(context, "/signUp")
                                  ;}
                              },
                            ),
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
