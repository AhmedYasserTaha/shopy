import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({
    super.key,
    required this.desktop,
    this.taplet,
    this.mobileLarge,
    required this.mobile,
  });

  final Widget desktop;
  final Widget? taplet;
  final Widget? mobileLarge;
  final Widget mobile;

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTablet(BuildContext context) {
    // تصحيح اسم الفانكشن
    return MediaQuery.of(context).size.width >= 700 &&
        MediaQuery.of(context).size.width < 1024;
  }

  static bool isMobileLarge(BuildContext context) {
    return MediaQuery.of(context).size.width >= 500 &&
        MediaQuery.of(context).size.width < 700;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 500;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    if (isDesktop(context)) {
      return desktop;
    } else if (isTablet(context) && taplet != null) {
      return taplet!;
    } else if (isMobileLarge(context) && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
