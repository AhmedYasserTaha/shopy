import 'package:flutter/material.dart';
import 'package:shopy/core/utils/constans.dart';
import 'package:shopy/featured/auth/singup/sing_up_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    // ضمان تنفيذ الانتقال بعد بناء الواجهة بالكامل
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(
        const Duration(seconds: 3),
        () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const SingUpView()),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.kPColor,
      body: Center(
        child: Image.asset("assets/images/Group.png"),
      ),
    );
  }
}
