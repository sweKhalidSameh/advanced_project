import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/textStyle.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasUppercase,
    required this.hasLowercase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least one uppercase letter", hasUppercase),
        SizedBox(height: 2),
        buildValidationRow("At least one lowercase letter", hasLowercase),
        SizedBox(height: 2),
        buildValidationRow("At least one number", hasNumber),
        SizedBox(height: 2),
        buildValidationRow(
          "At least one special character",
          hasSpecialCharacter,
        ),
        SizedBox(height: 2),
        buildValidationRow("At least 8 characters", hasMinLength),
      ],
    );
  }
}

Widget buildValidationRow(String text, bool isValid) {
  return Row(
    children: [
      Icon(
        isValid ? Icons.check_circle : Icons.cancel,
        color: isValid ? Colors.green : Colors.red,
        size: 20,
      ),
      SizedBox(width: 8),
      Text(
        text,
        style: Textstyles.font13DarkBlueRegular.copyWith(
          decoration: isValid ? TextDecoration.underline : null,
          decorationColor: isValid ? Colors.green : Colors.red,
          decorationThickness: 2,
          color: isValid ? ColorsManager.gray : ColorsManager.darkBlue,
        ),
      ),
    ],
  );
}
