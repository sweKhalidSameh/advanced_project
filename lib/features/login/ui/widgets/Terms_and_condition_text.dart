import 'package:advanced_project/core/theming/textStyle.dart';
import 'package:flutter/material.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our",
            style: Textstyles.font13DarkGrayRegular,
          ),
          TextSpan(
            text: " Terms & Conditions",
            style: Textstyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: "\n and",
            style: Textstyles.font13DarkGrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: " PrivacyPolicy.",
            style: Textstyles.font13DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
