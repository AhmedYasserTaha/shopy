import 'package:flutter/material.dart';
import 'package:shopy/core/utils/style.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.textTilte,
      this.fontSize,
      this.onPressed,
      required this.width});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String textTilte;
  final double? fontSize;
  final double? width;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          textTilte,
          style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
