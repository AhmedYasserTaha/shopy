import 'package:flutter/material.dart';
import 'package:shopy/core/utils/constans.dart';
import 'package:shopy/core/utils/style.dart';
import 'package:shopy/core/widget/custom_button_widget.dart';
import 'package:shopy/core/widget/custom_text_form_feild.dart';
import 'package:shopy/featured/auth/singup/sing_up_view.dart';
import 'package:shopy/featured/auth/singup/widget/have_account.dart';
import 'package:shopy/featured/home/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Welcome back",
          style: Styles.textStyle30.copyWith(color: Appcolor.Ktextcolor),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Please fill E-mail & password to login your\nShopy application account.",
                  style: Styles.textStyle16,
                ),
                const SizedBox(height: 50), // مسافة بين الحقول

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
                    textTilte: "Login"),
                const SizedBox(height: 20),
                HaveAccont(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SingUpView(),
                    ));
                  },
                  title: "Don't have an account?",
                  bottomTitle: "Sign Up",
                ),
              ],
            ),
          )),
    );
  }
}
