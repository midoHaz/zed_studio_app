import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:zed_studio_app/core/helpers/spacing.dart';
import 'package:zed_studio_app/core/theming/colors.dart';
import 'package:zed_studio_app/core/theming/styles.dart';
import 'package:zed_studio_app/core/widgets/app_text_button.dart';
import 'package:zed_studio_app/features/signup/ui/widgets/dont_recive_code.dart';

class SignUpOtpVerificationScreen extends StatelessWidget {
  const SignUpOtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController otpController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "OTP Verification",
                  style: TextStyles.font24MainGreenBold,
                ),
                verticalSpace(8.h),
                Text(
                    "We have sent an email to your email account with a verification code!",
                    style: TextStyles.font14GrayRegular),
                verticalSpace(100.h),
                PinCodeTextField(
                  appContext: context,
                  controller: otpController,
                  length: 6,
                  backgroundColor: ColorManager.backGray,
                  obscureText: false,
                  animationType: AnimationType.scale,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(12),
                    fieldHeight: 50.h,
                    fieldWidth: 50.w,
                    inactiveColor: ColorManager.lightGray,
                    activeColor: ColorManager.mainGreen,
                    selectedColor: ColorManager.mainGreen,
                  ),
                  onChanged: (value) {},
                  onCompleted: (value) {
                    print("Completed: $value");
                  },
                ),
                verticalSpace(270.h),
                const DontReciveCode(),
                verticalSpace(20.h),
                AppTextButton(
                  buttonText: 'VERIFY',
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
