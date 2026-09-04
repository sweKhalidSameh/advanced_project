import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/font_weights_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Textstyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightsHelper.bold,
    color: Colors.black,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightsHelper.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightsHelper.regular,
    color: ColorsManager.gray,
  );
  static TextStyle font14BlueSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightsHelper.semiBold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightsHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightsHelper.bold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font14LightGrayMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightsHelper.medium,
    color: ColorsManager.lightGray,
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightsHelper.medium,
    color: ColorsManager.darkBlue,
  );

  static TextStyle font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightsHelper.regular,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font12GrayRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightsHelper.regular,
    color: ColorsManager.gray,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightsHelper.regular,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font13DarkGrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightsHelper.regular,
    color: ColorsManager.darkGray,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightsHelper.semiBold,
    color: ColorsManager.mainBlue,
  );
}
