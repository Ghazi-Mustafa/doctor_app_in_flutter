import 'package:doctor_app/core/theming/colors_manager.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  AppTextButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.style,
    this.contentPadding,
    this.borderRadius,
    this.backgroundColor,
    this.buttonWidth,
    this.buttonHeight,
    this.textStyle,
  });
  final VoidCallback onPressed;
  final String buttonText;
  final TextStyle? textStyle;
  final ButtonStyle? style;
  final EdgeInsetsGeometry? contentPadding;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? buttonWidth;
  final double? buttonHeight;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style:
          style ??
          TextButton.styleFrom(
            backgroundColor: backgroundColor ?? ColorsManager.mainBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16),
            ),
            padding:
                contentPadding ??
                EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),

            fixedSize: Size(
              buttonWidth?.w ?? double.maxFinite,
              buttonHeight?.h ?? 50.h,
            ),
          ),
      child: Text(
        buttonText,
        style: textStyle ?? TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
