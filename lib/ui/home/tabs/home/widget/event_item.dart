import 'package:flutter/material.dart';
import 'package:testproject/utils/app_assets.dart';
import 'package:testproject/utils/app_colors.dart';
import 'package:testproject/utils/app_styles.dart';

class EventItem extends StatelessWidget {
  const EventItem({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage(AppAssets.birthdayImage),fit: BoxFit.fill),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.02,
          vertical: height * 0.01
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.02
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).dividerColor
              ),
              child: Column(
                children: [
                  Text('22',style: AppStyles.bold20primary,),
                  Text('Nov',style: AppStyles.bold14primary,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.02,
                vertical: height * 0.01
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).dividerColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text('This is a Birthday Party ',style: AppStyles.bold14black,)),
                  Image.asset(AppAssets.iconLoveSelected,color: AppColors.primaryLight,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
