import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zed_studio_app/core/helpers/spacing.dart';
import 'package:zed_studio_app/core/theming/styles.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Your Guide to Italian Tax & Immigration",
          style: TextStyles.font30BlackBold.copyWith(height: 1.2),
          textAlign: TextAlign.center,

        ),
        verticalSpace(20.h),
        Text(
          "Simplify your journey to Italy with expert tax consultation, comprehensive immigration support, and accessible multilingual assistance.",
          style: TextStyles.font16DarkGrayregular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
