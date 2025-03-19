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
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SingUpView(),
        ));
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.kPColor,
      body: Container(
        alignment: Alignment.center,
        child: Image.asset("assets/images/Group.png"),
      ),
    );
  }
}
