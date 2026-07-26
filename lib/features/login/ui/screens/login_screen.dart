import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/textStyle.dart';
import 'package:advanced_project/core/widgets/app_text_bottin.dart';
import 'package:advanced_project/core/widgets/app_text_form_field.dart';
import 'package:advanced_project/features/login/ui/widgets/Terms_and_condition_text.dart';
import 'package:advanced_project/features/login/ui/widgets/already_have_accont_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscureText = true;
  bool isChecked = false;
  final formKey = GlobalKey<FormState>();
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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      // Email and Password fields
                      AppTextFormField(hintText: "Email"),
                      SizedBox(height: 16.h),
                      AppTextFormField(
                        hintText: "Password",
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 9.0,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
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
                          if (formKey.currentState!.validate()) {
                            // Perform login logic here
                          }
                        },
                      ),
                      SizedBox(height: 46.h),
                      TermsAndConditionText(),
                      SizedBox(height: 24.h),
                      AlreadyHaveAccontText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
