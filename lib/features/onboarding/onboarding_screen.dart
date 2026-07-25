import 'package:advanced_project/core/theming/textStyle.dart';
import 'package:advanced_project/features/onboarding/widgets/doc_logo_name.dart';
import 'package:advanced_project/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:advanced_project/features/onboarding/widgets/get_started_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 41.02.h),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: Textstyles.font14gray400Weght,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 32.h),
                      const GetStartedBotton(),
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
