import 'package:doctor_app/core/theming/colors_manager.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  AppTextFormField({
    super.key,
    this.contentPadding,
    required this.hintText,
    this.isObscureText,
    this.hintStyle,
    this.inputTextStyle,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.backgroundColor,
  });

  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final bool? isObscureText;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor ?? ColorsManager.moreLightGrey,
        isDense: true,
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorsManager.lighterGrey,
                width: 1.3,
              ),
            ),
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
        suffixIcon: suffixIcon,
        hintText: hintText,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
    );
  }
}
