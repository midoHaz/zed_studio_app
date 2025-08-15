
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zed_studio_app/core/helpers/extensions.dart';
import 'package:zed_studio_app/core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13BlackRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13MainGreenSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}