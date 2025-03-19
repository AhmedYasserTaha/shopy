import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopy/core/widget/custom_social_button.dart';

class singin_googel_facebook extends StatelessWidget {
  const singin_googel_facebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSocialButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            textColor: Colors.red,
            icon: FontAwesomeIcons.google,
            text: "Google"),
        const SizedBox(width: 16),
        CustomSocialButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            textColor: Colors.blue,
            icon: FontAwesomeIcons.facebook,
            text: "Google"), // مسافة بين الزرين
        // زر تسجيل الدخول بالفيسبوك
      ],
    );
  }
}
