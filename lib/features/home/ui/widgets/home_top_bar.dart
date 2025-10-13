import 'package:doctor_app/core/theming/colors_manager.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi,Omar!", style: TextStyles.font18DarkBlueBold),
            Text("How are you today", style: TextStyles.font12GreyRegular),
          ],
        ),
        Spacer(),
        CircleAvatar(
          backgroundColor: ColorsManager.moreLighterGrey,
          child: SvgPicture.asset("assets/images/notification.svg"),
        ),
      ],
    );
  }
}
