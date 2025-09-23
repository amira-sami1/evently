import 'package:flutter/material.dart';
import 'package:testproject/l10n/app_localizations.dart';
import 'package:testproject/ui/home/tabs/home/widget/event_item.dart';
import 'package:testproject/ui/home/tabs/home/widget/event_tab_item.dart';
import 'package:testproject/utils/app_assets.dart';
import 'package:testproject/utils/app_colors.dart';
import 'package:testproject/utils/app_styles.dart';

class HomeTab extends StatefulWidget {
   HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
   int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List<String> eventsNameList = [
      AppLocalizations.of(context)!.all,
      AppLocalizations.of(context)!.sport,
      AppLocalizations.of(context)!.birthday,
      AppLocalizations.of(context)!.meeting,
      AppLocalizations.of(context)!.gaming,
      AppLocalizations.of(context)!.workshop,
      AppLocalizations.of(context)!.book_club,
      AppLocalizations.of(context)!.exhibition,
      AppLocalizations.of(context)!.holiday,
      AppLocalizations.of(context)!.eating,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppLocalizations.of(context)!.welcome_back,style: AppStyles.regular14white,),
                Text('John Safwat',style: AppStyles.bold24white,)
              ],
            ),
            Spacer(),
            Image.asset(AppAssets.iconTheme),
            SizedBox(width: width * 0.02,),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.02,
                vertical: height * 0.01
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.whiteColor
              ),
              child: Text('EN',
              style: AppStyles.bold14primary,),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.04,
              vertical: height * 0.02
            ),
            height: height * 0.15 ,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                )
              ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(AppAssets.iconMap),
                    SizedBox(width: width * 0.02,),
                    Text('Cairo , Egypt',style: AppStyles.medium14white,)
                  ],
                ),
                DefaultTabController(
                    length: eventsNameList.length,
                    child: TabBar(
                      isScrollable: true,
                        labelPadding: EdgeInsets.zero,
                        tabAlignment: TabAlignment.start,
                        indicatorColor: AppColors.transparentColor,
                        dividerColor: AppColors.transparentColor,
                        onTap: (index) {
                          selectedIndex = index;
                          setState(() {

                          });
                        },
                        tabs: eventsNameList.map((eventName) => EventTabItem(
                            eventName: eventName,
                            isSelected: selectedIndex == eventsNameList.indexOf(eventName)
                        ),).toList()
                    ),
                ),
              ],
            ),
          ),
          Expanded(child: ListView.separated(
            padding: EdgeInsets.only(
              top: height * 0.02
            ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.04
                  ),
                  child: EventItem(),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: height * 0.02,);
              },
              itemCount: 20
          ))
        ],
      ),
    );
  }
}
