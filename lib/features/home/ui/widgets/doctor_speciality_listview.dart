import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors_manager.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListview extends StatelessWidget {
  const DoctorSpecialityListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: ColorsManager.moreLighterGrey,
                  radius: 28,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/Image.png"),
                  ),
                ),
                verticalSpace(8),
                Text("Mustafa", style: TextStyles.font12DarkBlueRegular),
              ],
            ),
          );
        },
      ),
    );
  }
}
