import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zed_studio_app/core/theming/styles.dart';

class DontReciveCode extends StatelessWidget {
  const DontReciveCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t receive the code? ',
              style: TextStyles.font13BlackRegular,
            ),
            TextSpan(
              text: ' RESEND',
              style: TextStyles.font13MainGreenSemiBold,
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );
  }
}
