import 'package:flutter/material.dart';
import 'package:testproject/utils/app_colors.dart';
import 'package:testproject/utils/app_styles.dart';

class EventTabItem extends StatelessWidget {
  final String eventName;
  final bool isSelected;
  const EventTabItem({super.key,required this.eventName,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.005
      ),
      margin: EdgeInsets.symmetric(
          horizontal: width * 0.01,
          vertical: height * 0.02
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(46),
        color: isSelected? Theme.of(context).focusColor : AppColors.transparentColor,
        border: Border.all(
          color: Theme.of(context).focusColor,
          width: 2
        )
      ),
      child: Text(eventName,
      style: isSelected ? Theme.of(context).textTheme.headlineMedium:AppStyles.medium16white,),
    );
  }
}
