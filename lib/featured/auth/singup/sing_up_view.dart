import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CustomTextField(
                label: "Name",
                keyboardType: TextInputType.name,
                icon: Icons.person),
            const SizedBox(height: 16), // مسافة بين الحقول
            const CustomTextField(
                label: "Email",
                keyboardType: TextInputType.emailAddress,
                icon: Icons.email),
            const SizedBox(height: 16), // مسافة بين الحقول
            const CustomTextField(
                label: "Password",
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
                icon: Icons.password),
            const SizedBox(height: 16), // مسافة بين الحقول
            const CustomButtonWidget(
                backgroundColor: Appcolor.kPColor,
                textColor: Colors.white,
                textTilte: "SingUP"),

            const Text(
              "Or Sign Up With",
              style: Styles.textStyle14,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // زر تسجيل الدخول بجوجل
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: أضف هنا كود تسجيل الدخول بجوجل
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  icon: const Icon(FontAwesomeIcons.google, color: Colors.red),
                  label: const Text("Google"),
                ),
                const SizedBox(width: 16), // مسافة بين الزرين
                // زر تسجيل الدخول بالفيسبوك
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: أضف هنا كود تسجيل الدخول بالفيسبوك
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  icon: const Icon(FontAwesomeIcons.facebook,
                      color: Colors.white),
                  label: const Text("Facebook"),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Already have an account?",
                style: Styles.textStyle14,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Sign In",
                  style: Styles.textStyle16.copyWith(color: Appcolor.kPColor),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
