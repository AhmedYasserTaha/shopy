import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopy/core/widget/cubit/text_feild_cubit.dart';
import 'package:shopy/featured/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
  // ApiService();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextFeildCubit(), // توفير الكيوبت للتطبيق كله
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(), // الوضع الفاتح
        darkTheme: ThemeData.dark(), // الوضع الداكن
        themeMode: ThemeMode.system, // يحدد الوضع حسب النظام
        home: const SplashView(),
      ),
    );
  }
}
