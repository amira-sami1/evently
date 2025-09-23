import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/l10n/app_localizations.dart';
import 'package:testproject/providers/app_language_provider.dart';
import 'package:testproject/providers/app_theme_provider.dart';
import 'package:testproject/utils/app_colors.dart';
import 'package:testproject/utils/app_styles.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
        vertical: height * 0.02
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              themeProvider.changeTheme(ThemeMode.dark);
            },
            child: themeProvider.isDarkMode()?
                getSelectedItemWidget(language: AppLocalizations.of(context)!.dark):
                getUnSlectedItemWidget(language: AppLocalizations.of(context)!.dark)
          ),
          SizedBox(height: height * 0.02,),
          InkWell(
            onTap: (){
              themeProvider.changeTheme(ThemeMode.light);
            },
            child: !(themeProvider.isDarkMode())?
                getSelectedItemWidget(language: AppLocalizations.of(context)!.light):
                getUnSlectedItemWidget(language: AppLocalizations.of(context)!.light)
          ),
        ],
      ),
    );
  }

  Widget getSelectedItemWidget({required String language}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(language,
          style: AppStyles.bold16primary,),
        Icon(Icons.check,color: AppColors.primaryLight,)
      ],
    );
  }

  Widget getUnSlectedItemWidget({required String language}){
    return Text(language,
      style: AppStyles.bold16black,);
  }
}
