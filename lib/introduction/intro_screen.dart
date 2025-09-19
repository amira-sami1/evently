import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:testproject/utils/app_assets.dart';
import 'package:testproject/utils/app_colors.dart';
import 'package:testproject/utils/app_routes.dart';
import 'package:testproject/utils/app_styles.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: '',
          bodyWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(AppAssets.introEvently)),
                SizedBox(height: height * 0.04),
                Center(
                  child: Image.asset(
                    AppAssets.eventsEvently,
                    height: height * 0.42,
                    width: width * 1,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  "Find Events That Inspire You",
                  style: AppStyles.bold20primary,
                ),
                SizedBox(height: height * 0.03),
                Text(
                  'Dive into a world of events crafted to fit your unique interests. Whether '
                  'youre into live music,'
                  'art workshops, professional networking, or simply'
                  ' discovering new experiences, we have something for everyone.'
                  ' Our curated recommendations will help you explore, connect,'
                  'and make the most of every opportunity around you.',
                  style: AppStyles.medium16black,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          decoration: const PageDecoration(pageColor: AppColors.whiteLight),
        ),
        PageViewModel(
          title: '',
          bodyWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(AppAssets.introEvently)),
                SizedBox(height: height * 0.04),
                Center(
                  child: Image.asset(
                    AppAssets.planningEvently,
                    height: height * 0.42,
                    width: width * 1,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  "Effortless Event Planning",
                  style: AppStyles.bold20primary,
                ),
                SizedBox(height: height * 0.03),
                Text(
                  'Take the hassle out of organizing events with our all-'
                  'in-one planning tools. From setting up invites and managing'
                  ' RSVPs to scheduling reminders and coordinating details,'
                  ' we’ve got you covered. Plan with ease and focus on what matters –'
                  ' creating an unforgettable experience for you and your guests.',
                  style: AppStyles.medium16black,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          decoration: const PageDecoration(pageColor: AppColors.whiteLight),
        ),
        PageViewModel(
          title: '',
          bodyWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(AppAssets.introEvently)),
                SizedBox(height: height * 0.04),
                Center(
                  child: Image.asset(
                    AppAssets.shareEvently,
                    height: height * 0.42,
                    width: width * 1,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  "Connect with Friends & Share Moments",
                  style: AppStyles.bold20primary,
                ),
                SizedBox(height: height * 0.03),
                Text(
                  ' Make every event memorable by sharing the experience with others.'
                  'Our platform lets you invite friends, keep everyone in the loop,'
                  ' and celebrate moments together. Capture and share the excitement with your network,'
                  ' so you can relive the highlights and cherish the memories.',
                  style: AppStyles.medium16black,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          decoration: const PageDecoration(pageColor: AppColors.whiteLight),
        ),
      ],

      done: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: AppColors.whiteLight,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primaryLight, width: 1),
        ),
        child: Icon(Icons.arrow_back, color: AppColors.primaryLight),
      ),
      onDone: () {
        Navigator.of(context).pushReplacementNamed(AppRoutes.homeRouteName);
      },

      showBackButton: true,
      back: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: AppColors.whiteLight,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primaryLight, width: 1),
        ),
        child: Icon(Icons.arrow_back, color: AppColors.primaryLight),
      ),
      next: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: AppColors.whiteLight,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primaryLight, width: 1),
        ),
        child: Icon(Icons.arrow_forward, color: AppColors.primaryLight),
      ),

      dotsDecorator: DotsDecorator(
        color: AppColors.blackColor,
        activeColor: AppColors.primaryLight,
      ),
      dotsContainerDecorator: BoxDecoration(
        color: AppColors.whiteLight,
        // borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
