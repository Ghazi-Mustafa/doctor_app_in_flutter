import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_list_view.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality_listview.dart';
import 'package:doctor_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20, 16, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              verticalSpace(30),
              DoctorBlueContainer(),
              verticalSpace(24),
              DoctorSpeciality(),
              verticalSpace(18),
              DoctorSpecialityListview(),
              verticalSpace(8),
              DoctorListView(),
            ],
          ),
        ),
      ),
    );
  }
}
