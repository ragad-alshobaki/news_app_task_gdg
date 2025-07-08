import 'package:flutter/material.dart';
import 'package:news_app/screens/splash.dart';
import 'package:news_app/util/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App Flutter GDG Task 8',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
      ),
      home: const SplashScreen(),
    );
  }
}
