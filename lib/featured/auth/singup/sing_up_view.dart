import 'package:flutter/material.dart';
import 'package:shopy/core/utils/constans.dart';
import 'package:shopy/core/utils/style.dart';
import 'package:shopy/core/widget/custom_button_widget.dart';
import 'package:shopy/core/widget/custom_text_form_feild.dart';

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
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextField(
                label: "Name",
                keyboardType: TextInputType.name,
                icon: Icons.person),
            SizedBox(height: 16), // مسافة بين الحقول
            CustomTextField(
                label: "Email",
                keyboardType: TextInputType.emailAddress,
                icon: Icons.email),
            SizedBox(height: 16), // مسافة بين الحقول
            CustomTextField(
                label: "Password",
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
                icon: Icons.password),
            SizedBox(height: 16), // مسافة بين الحقول
            CustomButtonWidget(
                backgroundColor: Appcolor.kPColor,
                textColor: Colors.white,
                textTilte: "SingUP"),
          ],
        ),
      ),
    );
  }
}
