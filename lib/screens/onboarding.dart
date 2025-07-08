import 'package:flutter/material.dart';
import 'package:news_app/util/app_assets.dart';
import 'package:news_app/util/app_color.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.onBoardingImg),
          fit: BoxFit.cover)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.newspaper,
                size: 60,
                color: AppColor.primaryColor,  
              ),
              SizedBox(height: 20,),
              Text("Welcom to News app",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.greyColor,
                // fontSize: 30,
              ),
              ),
              SizedBox(height: 20,),
              FilledButton(onPressed: (){}, child: Text('Get Started'))
            ],
          ),
        ),
      ),
    );
  }
}