import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroudColor;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.focusedBorder,
    this.backgroudColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsetsDirectional.symmetric(horizontal: 20.w, vertical: 17.h),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1),
              borderRadius: BorderRadius.circular(16),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.lighterGray,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        hintStyle: hintStyle ?? Textstyles.font14LightGrayMedium,
        hintText: hintText,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: backgroudColor ?? ColorsManager.morelightGray,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? Textstyles.font14DarkBlueMedium,
    );
  }
}
