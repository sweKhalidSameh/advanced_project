import 'package:advanced_project/core/theming/textStyle.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccontText extends StatelessWidget {
  const AlreadyHaveAccontText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account yet?",
            style: Textstyles.font13DarkBlueRegular,
          ),
          TextSpan(text: " Sign Up", style: Textstyles.font13BlueSemiBold),
        ],
      ),
    );
  }
}
