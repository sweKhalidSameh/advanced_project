import 'package:advanced_project/core/helpers/extentions.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/textStyle.dart';
import 'package:flutter/material.dart';

class GetStartedBotton extends StatelessWidget {
  const GetStartedBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: TextButton.styleFrom(
        backgroundColor: ColorsManager.mainBlue,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const Size(double.infinity, 52),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        "Get Started",
        style: Textstyles.font16whiteSemiBold,
        textAlign: TextAlign.center,
      ),
    );
  }
}
