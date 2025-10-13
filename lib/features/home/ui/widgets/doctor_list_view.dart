import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors_manager.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),

            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.moreLighterGrey,
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                    child: Image.asset(
                      "assets/images/Image.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                horizontalSpace(20),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Randy Wigham",
                        style: TextStyles.font18DarkBlueBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(5),
                      Text(
                        "General | RSUD Gatot Subroto",
                        style: TextStyles.font12GreyMedium,
                      ),
                      verticalSpace(5),
                      Text(
                        "⭐️ 4.8 (4,279 reviews)",
                        style: TextStyles.font12GreyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
