import 'package:flutter/material.dart';
import 'package:shopy/core/utils/constans.dart';
import 'package:shopy/core/utils/style.dart';
import 'package:shopy/featured/auth/login/login_view.dart';

class HaveAccont extends StatelessWidget {
  const HaveAccont(
      {super.key,
      required this.title,
      required this.bottomTitle,
      required this.onPressed});
  final String title;
  final String bottomTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        title,
        style: Styles.textStyle14,
      ),
      TextButton(
        onPressed: onPressed,
        child: Text(
          bottomTitle,
          style: Styles.textStyle16.copyWith(color: Appcolor.kPColor),
        ),
      ),
    ]);
  }
}
