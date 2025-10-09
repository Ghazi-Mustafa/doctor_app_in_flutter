import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors_manager.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(text: "At least 1 lowercase letter", hasValidated: hasLowerCase),
        verticalSpace(2),
        buildValidationRow(text: "At least 1 uppercase letter", hasValidated: hasUpperCase),
        verticalSpace(2),
        buildValidationRow(text: "At least 1 special character", hasValidated: hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow(text: "At least 1 number", hasValidated: hasNumber),
        verticalSpace(2),
        buildValidationRow(text: "At least 8 characters long", hasValidated: hasMinLength),
      ],
    );
  }

  Widget buildValidationRow({
    required String text,
    required bool hasValidated,
  }) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorsManager.grey),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.grey : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
