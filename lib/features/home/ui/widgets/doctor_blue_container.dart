import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: AssetImage("assets/images/home_blue_container.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Book and\nschedule with\nnearest doc",
                style: TextStyles.font18WhiteMedium,
                textAlign: TextAlign.start,
              ),
              verticalSpace(16),
              SizedBox(
                height: 44.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(48),
                    ),
                  ),
                  child: Text(
                    "Find Nearby",
                    style: TextStyles.font13BlueSemiBold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 10.w,
          top: -28.h,
          bottom: 0,
          child: Image.asset("assets/images/Image.png"),
        ),
      ],
    );
  }
}
