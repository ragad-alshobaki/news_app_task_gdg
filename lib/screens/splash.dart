import 'package:flutter/material.dart';
import 'package:news_app/util/app_color.dart';

import 'onboarding.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      (){
        Navigator.pushReplacement(context,
         MaterialPageRoute(builder: (context) {
          return const OnBoardingScreen();
         },
         fullscreenDialog: true,
         ));
      }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: AppColor.redColor,
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Stay informed, stay ahead',
              style: TextStyle(
                color: AppColor.greyColor
              ),
            )
          ],
        ),
      ),
    );
  }
}