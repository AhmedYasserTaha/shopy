import 'package:flutter/material.dart';
import 'package:shopy/core/utils/constans.dart';
import 'package:shopy/core/utils/style.dart';
import 'package:shopy/core/widget/custom_button_widget.dart';
import 'package:shopy/core/widget/custom_text_form_feild.dart';
import 'package:shopy/featured/auth/login/login_view.dart';
import 'package:shopy/featured/auth/singup/widget/have_account.dart';
import 'package:shopy/featured/auth/singup/widget/singin_googel_facebook.dart';
import 'package:shopy/featured/home/home_view.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomTextField(
              label: "Name",
              keyboardType: TextInputType.name,
              icon: Icons.person),
          const SizedBox(height: 20), // مسافة بين الحقول
          const CustomTextField(
              label: "Email",
              keyboardType: TextInputType.emailAddress,
              icon: Icons.email),
          const SizedBox(height: 20), // مسافة بين الحقول
          const CustomTextField(
              label: "Password",
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
              icon: Icons.password),
          const SizedBox(height: 50), // مسافة بين الحقول
          CustomButtonWidget(
              width: MediaQuery.of(context).size.width,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeView(),
                ));
              },
              backgroundColor: Appcolor.kPColor,
              textColor: Colors.white,
              textTilte: "SingUP"),
          const SizedBox(height: 20), // مسافة بين الحقول

          const Text(
            "Or Sign Up With",
            style: Styles.textStyle14,
          ),
          const SizedBox(height: 20), // مسافة بين الحقول

          const singin_googel_facebook(),
          const SizedBox(height: 20), // مسافة بين الحقول

          HaveAccont(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const LoginView(),
            )),
            title: "Already have an account?",
            bottomTitle: "Sign In",
          ),
        ],
      ),
    );
  }
}
