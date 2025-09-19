import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppStyles{
  static TextStyle bold20primary = GoogleFonts.elMessiri(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryLight,
  );
  static TextStyle medium16black = GoogleFonts.elMessiri(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );
  static TextStyle medium20white = GoogleFonts.elMessiri(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  );
  static TextStyle medium20primary = GoogleFonts.elMessiri(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryLight,
  );
}