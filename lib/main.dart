import 'package:flutter/material.dart';
import 'package:testproject/introduction/intro_screen.dart';
import 'package:testproject/introduction/welcome_screen.dart';
import 'package:testproject/ui/home/home_screen.dart';
import 'package:testproject/utils/app_routes.dart';
import 'package:testproject/utils/app_theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcomeRouteName ,
      routes: {
        AppRoutes.welcomeRouteName : (context) => WelcomeScreen(),
        AppRoutes.introRouteName : (context) => IntroScreen(),
        AppRoutes.homeRouteName : (context) => HomeScreen(),
      },
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
    );
  }
}
