import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../core/mutable/theme/colors.dart';
import '../../../core/mutable/widgets/image/imageAsset.dart';
import '../../home/screens/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: kTextTabBarHeight * 5,
      splash: ImageAsset(
        image: "assets/images/ocean.jpeg",
      ),
      duration: 1000,
      backgroundColor: AppColors.darkBlue,
      nextScreen: HomePage(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
    );
  }
}
