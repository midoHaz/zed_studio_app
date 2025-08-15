import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zed_studio_app/core/helpers/spacing.dart';
import 'package:zed_studio_app/features/onboarding/widgets/about_us.dart';
import 'package:zed_studio_app/features/onboarding/widgets/get_started_button.dart';
import 'package:zed_studio_app/features/onboarding/widgets/onboarding_lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50.h,left: 20.w, right: 20.w),
            child: Column(
              children: [
                const OnboardingLottie(),
                verticalSpace( 40.h),
                const AboutUs(),
                verticalSpace(40.h),
                const GetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
