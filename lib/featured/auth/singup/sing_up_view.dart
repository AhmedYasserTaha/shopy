import 'package:flutter/material.dart';
import 'package:shopy/core/utils/style.dart';

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
      body: Column(
        children: [],
      ),
    );
  }
}
