import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zed_studio_app/core/helpers/extensions.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: TextStyles.font13BlackRegular,
          ),
          TextSpan(
            text: ' Login',
            style: TextStyles.font13MainGreenSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
  ),
);
}
}