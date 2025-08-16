import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zed_studio_app/core/helpers/extensions.dart';
import 'package:zed_studio_app/core/helpers/spacing.dart';
import 'package:zed_studio_app/core/routing/routes.dart';
import 'package:zed_studio_app/core/theming/styles.dart';
import 'package:zed_studio_app/core/widgets/app_text_button.dart';
import 'package:zed_studio_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:zed_studio_app/features/signup/ui/widgets/already_have_account_text.dart';
import 'package:zed_studio_app/features/signup/ui/widgets/sign_up_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.h),
        child: SingleChildScrollView(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create Account",style: TextStyles.font24MainGreenBold,), 
              verticalSpace(8),
              Text("Create your Account at ZStudio Consulenze to Request services, upload documents, track your requests, and receive completed files directly on your phone.",
              style:TextStyles.font14GrayRegular),
              verticalSpace(36),
               Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        context.pushNamed(Routes.signUpOtpVerificationScreen);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                  ], 
                  ),
            ],
          ),
        )),
      ),
    );
  }
}