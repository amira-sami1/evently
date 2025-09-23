import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/l10n/app_localizations.dart';
import 'package:testproject/providers/app_language_provider.dart';
import 'package:testproject/utils/app_colors.dart';
import 'package:testproject/utils/app_styles.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var languageProvider = Provider.of<AppLanguageProvider>(context);
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
              languageProvider.changeLanguage('en');
            },
            child: languageProvider.appLanguage =='en'?
                getSelectedItemWidget(language: AppLocalizations.of(context)!.english):
                getUnSlectedItemWidget(language: AppLocalizations.of(context)!.english)
          ),
          SizedBox(height: height * 0.02,),
          InkWell(
            onTap: (){
              languageProvider.changeLanguage('ar');
            },
            child: languageProvider.appLanguage == 'ar'?
                getSelectedItemWidget(language: AppLocalizations.of(context)!.arabic):
                getUnSlectedItemWidget(language: AppLocalizations.of(context)!.arabic)
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
