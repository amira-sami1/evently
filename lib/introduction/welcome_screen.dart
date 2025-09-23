import 'package:flutter/material.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';
import 'intro_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.whiteLight,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(AppAssets.introEvently)),
              SizedBox(height: height * 0.04,),
              Center(child: Image.asset(AppAssets.experienceEvently,height: height * 0.42,width: width * 1,)),
              SizedBox(height: height * 0.03),
              Text(
                "Personalize Your Experience",
                style: AppStyles.bold20primary,
              ),
              SizedBox(height: height * 0.03),
              Text(
                "Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.",
                style: AppStyles.medium16black,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Language',style: AppStyles.medium20primary,),
                  Icon(Icons.circle)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Theme',style: AppStyles.medium20primary,),
                  Icon(Icons.circle)
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.03 ,
                  left: width * 0.04,
                  right: width * 0.04,
                ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryLight,
                        padding: EdgeInsets.symmetric(vertical: height * 0.01),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const IntroScreen(),
                          ),
                        );
                      },
                      child: Text("Let’s Start",style: AppStyles.medium20white,),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
