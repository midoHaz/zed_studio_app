import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zed_studio_app/core/helpers/spacing.dart';
import 'package:zed_studio_app/core/theming/styles.dart';
import 'package:zed_studio_app/core/widgets/app_text_button.dart';
import 'package:zed_studio_app/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:zed_studio_app/features/login/ui/widgets/email_and_password.dart';
import 'package:zed_studio_app/features/login/ui/widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.h),
        child: SingleChildScrollView(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back",style: TextStyles.font24MainGreenBold,), 
              verticalSpace(8),
              Text("Login to access your personalized tax and immigration services.",style:TextStyles.font14GrayRegular),
              verticalSpace(36),
               Column(
                children: [
                  const EmailAndPassword(),
                  verticalSpace(24),
                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text('Forgot password?',
                          style: TextStyles.font13MainGreenRegular)),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: 'Login',
                    textStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {
                      
                    },
                  ),
                  verticalSpace(16),
                  const TermsAndConditionsText(),
                  verticalSpace(60),
                  const DontHaveAccountText(),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
