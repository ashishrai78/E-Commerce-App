import 'package:ShoppingApp/utils/constants/images.dart';
import 'package:ShoppingApp/utils/constants/sizes.dart';
import 'package:ShoppingApp/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key, required this.animation, required this.title, required this.subTitle
  });
  final String animation;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: USizes.defaultSpace, right: USizes.defaultSpace, top: USizes.appBarHeight),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(title, style: Theme.of(context).textTheme.headlineMedium,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(subTitle, textAlign: TextAlign.center),
          )
        ],
      ),
    );
  }
}