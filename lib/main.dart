import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/introduction/intro_screen.dart';
import 'package:testproject/introduction/welcome_screen.dart';
import 'package:testproject/providers/app_language_provider.dart';
import 'package:testproject/providers/app_theme_provider.dart';
import 'package:testproject/ui/home/home_screen.dart';
import 'package:testproject/utils/app_routes.dart';
import 'package:testproject/utils/app_theme.dart';

import 'l10n/app_localizations.dart';

void main(){
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppLanguageProvider(),),
        ChangeNotifierProvider(create: (context) => AppThemeProvider(),)
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcomeRouteName ,
      routes: {
        AppRoutes.welcomeRouteName : (context) => WelcomeScreen(),
        AppRoutes.introRouteName : (context) => IntroScreen(),
        AppRoutes.homeRouteName : (context) => HomeScreen(),
      },
      locale: Locale(languageProvider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      themeMode: themeProvider.appTheme,
    );
  }
}
