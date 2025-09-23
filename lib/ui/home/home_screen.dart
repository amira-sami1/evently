import 'package:flutter/material.dart';
import 'package:testproject/l10n/app_localizations.dart';
import 'package:testproject/ui/home/tabs/favorite/favorite_tab.dart';
import 'package:testproject/ui/home/tabs/home/home_tab.dart';
import 'package:testproject/ui/home/tabs/map/map_tab.dart';
import 'package:testproject/ui/home/tabs/profile/profile_tab.dart';
import 'package:testproject/utils/app_assets.dart';
import 'package:testproject/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabsList = [
    HomeTab(),MapTab(),FavoriteTab(),ProfileTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
          onTap: (index){
          selectedIndex = index;
          setState(() {

          });
          },
          items: [
            builtBottomNavigationBarItem(
              index: 0,
                selectedIconName: AppAssets.iconHomeSelected,
                unSelectedIconName: AppAssets.iconHome,
                label: AppLocalizations.of(context)!.home
            ),
            builtBottomNavigationBarItem(
              index: 1,
                selectedIconName: AppAssets.iconMapSelected,
                unSelectedIconName: AppAssets.iconMap,
                label: AppLocalizations.of(context)!.map
            ),
            builtBottomNavigationBarItem(
              index: 2,
                selectedIconName: AppAssets.iconLoveSelected,
                unSelectedIconName: AppAssets.iconLove,
                label: AppLocalizations.of(context)!.love
            ),
            builtBottomNavigationBarItem(
              index: 3,
                selectedIconName: AppAssets.iconProfileSelected,
                unSelectedIconName: AppAssets.iconProfile,
                label: AppLocalizations.of(context)!.profile
            ),
          ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.add,color: AppColors.whiteColor,size: 30,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabsList[selectedIndex],
    );
  }

  BottomNavigationBarItem builtBottomNavigationBarItem({required String selectedIconName ,
    required String unSelectedIconName,
  required int index,
    required String label}){
    return BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(selectedIndex == index?
        selectedIconName : unSelectedIconName)) ,
        label: label
    );
  }
}
