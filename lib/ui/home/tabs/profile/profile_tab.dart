import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/l10n/app_localizations.dart';
import 'package:testproject/providers/app_language_provider.dart';
import 'package:testproject/providers/app_theme_provider.dart';
import 'package:testproject/ui/home/tabs/profile/language/language_bottom_sheet.dart';
import 'package:testproject/ui/home/tabs/profile/theme/theme_bottom_sheet.dart';
import 'package:testproject/utils/app_assets.dart';
import 'package:testproject/utils/app_colors.dart';
import 'package:testproject/utils/app_styles.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    var ThemeProvider = Provider.of<AppThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryLight,
        toolbarHeight: height * 0.18,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(bottomLeft: Radius.circular(60)),
        ),
        title: Row(
          children: [
            Image.asset(AppAssets.profileEvently),
            SizedBox(width: width * 0.04,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('John Safwat',style: AppStyles.bold24white,),
                Text('johnsafwat.route@gmail.com',style: AppStyles.medium16white,),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.02
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headlineLarge,),
            InkWell(
              onTap: (){
                showLanguageBottomSheet();
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: height * 0.02,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.04,
                  vertical: height * 0.01
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: AppColors.primaryLight,
                    width: 2
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(languageProvider.appLanguage == 'en'?
                      AppLocalizations.of(context)!.english :
                    AppLocalizations.of(context)!.arabic,
                    style: AppStyles.bold20primary,),
                    Icon(Icons.arrow_drop_down_outlined,color: AppColors.primaryLight,size: 35,)
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.02,),
            Text(AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.headlineLarge,),
            InkWell(
              onTap: (){
                showThemeBottomSheet();
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: height * 0.02,
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                    vertical: height * 0.01
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                      color: AppColors.primaryLight,
                      width: 2
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( ThemeProvider.isDarkMode()?
                        AppLocalizations.of(context)!.dark:
                        AppLocalizations.of(context)!.light,
                      style: AppStyles.bold20primary,),
                    Icon(Icons.arrow_drop_down_outlined,color: AppColors.primaryLight,size: 35,)
                  ],
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.redColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.02,
                  horizontal: width * 0.04
                )
              ),
                onPressed: (){},
                child:Row(
                  children: [
                    Icon(Icons.logout,color: AppColors.whiteColor,),
                    SizedBox(width: width * 0.02,),
                    Text(AppLocalizations.of(context)!.logout,
                      style: AppStyles.regular20white,
                    ),
                  ],
                ),
            ),
            SizedBox(height: height * 0.02,)
          ],
        ),
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => LanguageBottomSheet(),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => ThemeBottomSheet(),
    );
  }
}
