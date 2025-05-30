import 'package:ShoppingApp/common/elevatedButton/elevated_button.dart';
import 'package:ShoppingApp/features/authentication/screens/onBoarding/widgets/onBoarding_page.dart';
import 'package:ShoppingApp/utils/constants/images.dart';
import 'package:ShoppingApp/utils/constants/sizes.dart';
import 'package:ShoppingApp/utils/constants/texts.dart';
import 'package:ShoppingApp/utils/helpers/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              onBoardingPage(animation: UImages.onBodyAnimation1, title: UTexts.onBoardingTitle1, subTitle: UTexts.onBoardingSubTitle1,),
              onBoardingPage(animation: UImages.onBodyAnimation2, title: UTexts.onBoardingTitle2, subTitle: UTexts.onBoardingSubTitle2,),
              onBoardingPage(animation: UImages.onBodyAnimation3, title: UTexts.onBoardingTitle3, subTitle: UTexts.onBoardingSubTitle3,),

            ],
          ),
          smoothPageIndicator(),
          Positioned(
            bottom: UDeviceHelper.getScreenHeight(context)*0.05,
            left: UDeviceHelper.getScreenWidth(context)*0.03,
            right: UDeviceHelper.getScreenWidth(context)*0.03,
            child: UElevatedButton(child: Text('Next'), onPressed: (){

            },),
          ),
          Positioned(
            right: UDeviceHelper.getScreenWidth(context)*0.08,
            top: UDeviceHelper.getScreenHeight(context)*0.04,
              child: Text('Skip')),
        ],
      ),
    );
  }
}


// Smooth Page Indicator

class smoothPageIndicator extends StatelessWidget {
  const smoothPageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: UDeviceHelper.getBottomNavigationBarHeight()*6,
        left: UDeviceHelper.getScreenWidth(context)/2.5,
        right: UDeviceHelper.getScreenWidth(context)/2.5,
        child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
          effect: ExpandingDotsEffect(
            dotHeight: 6
          ),
        ));
  }
}



