import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final IconData icon;
  final String text;

  const CustomSocialButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150, // نفس العرض لكل الأزرار
      height: 50, // نفس الارتفاع لكل الأزرار
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        icon: Icon(icon, color: textColor),
        label: Text(text),
      ),
    );
  }
}
