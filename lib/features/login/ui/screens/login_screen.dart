import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/textStyle.dart';
import 'package:advanced_project/core/widgets/app_text_bottin.dart';
import 'package:advanced_project/features/login/data/models/login_request_body.dart';
import 'package:advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_project/features/login/ui/widgets/Terms_and_condition_text.dart';
import 'package:advanced_project/features/login/ui/widgets/already_have_accont_text.dart';
import 'package:advanced_project/features/login/ui/widgets/email_and_password.dart';
import 'package:advanced_project/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: Textstyles.font24BlueBold),
                SizedBox(height: 8.h),
                Text(
                  "We're excited to have you back, can't wait to \nsee what you've been up to since you last \nlogged in.",
                  style: Textstyles.font14GrayRegular,
                ),
                SizedBox(height: 36.h),
                Column(
                  children: [
                    // Email and Password fields
                    EmailAndPassword(),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9.0),
                          child: GestureDetector(
                            child: Icon(
                              isChecked
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank,
                              color: ColorsManager.gray,
                            ),
                          ),
                        ),
                        Text(
                          "Remember me",
                          style: Textstyles.font12GrayRegular,
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              "Forgot Password?",
                              style: Textstyles.font12BlueRegular,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 32.h),
                    AppTextButton(
                      buttonText: "Login",
                      textStyle: Textstyles.font16WhiteSemiBold,
                      onPressed: () {
                        ValidateThenDoLigin(context);
                      },
                    ),
                    SizedBox(height: 46.h),
                    TermsAndConditionText(),
                    SizedBox(height: 24.h),
                    AlreadyHaveAccontText(),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ValidateThenDoLigin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      // Perform login action
      context.read<LoginCubit>().emitLoginState(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
