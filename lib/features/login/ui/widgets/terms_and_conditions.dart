import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key,required this.condition});
  final String condition;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "By $condition, you agree to our ",
        style: TextStyles.font13GreyRegular,
        children: [
          TextSpan(
            text: "Terms & Conditions ",
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: "and ",
            style: TextStyles.font13GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: "Privacy Policy",
            style: TextStyles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
