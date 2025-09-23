import 'package:flutter/material.dart';
import 'package:testproject/utils/app_colors.dart';
import 'package:testproject/utils/app_styles.dart';

class AppTheme{
static final ThemeData darkTheme = ThemeData(
  primaryColor: AppColors.primaryDark,
  dividerColor: AppColors.primaryDark,
  scaffoldBackgroundColor: AppColors.primaryDark,
  focusColor: AppColors.primaryDark,
  textTheme: TextTheme(
      headlineLarge: AppStyles.bold20white,
    headlineMedium: AppStyles.medium16white
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.primaryDark,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: AppColors.whiteColor,
    unselectedItemColor: AppColors.whiteColor
  ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryDark,
      shape:StadiumBorder(
          side: BorderSide(color: AppColors.whiteColor,width: 6)
      ),
    )
);
static final ThemeData lightTheme = ThemeData(
  primaryColor: AppColors.primaryLight,
  dividerColor: AppColors.whiteColor,
  scaffoldBackgroundColor: AppColors.whiteColor,
    focusColor: AppColors.whiteColor,
    textTheme: TextTheme(
    headlineLarge: AppStyles.bold20black,
        headlineMedium: AppStyles.medium16primary

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryLight,
      type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.whiteColor
    ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColors.primaryLight,
    shape:StadiumBorder(
      side: BorderSide(color: AppColors.whiteColor,width: 6)
    ),
  )
);
}