import 'package:flutter/material.dart';
import 'package:shopy/core/utils/style.dart';
import 'package:shopy/featured/auth/singup/widget/sign_up_body.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Sign Up",
          style: Styles.textStyle20,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
        child: SignUpBody(),
      ),
    );
  }
}
