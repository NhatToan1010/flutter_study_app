import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/integer_values.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter_study_app/src/utils/animation/design/fade_in_animation_design.dart';
import 'package:flutter_study_app/src/utils/animation/model/fade_in_animation_model.dart';
import 'package:get/get.dart';
import '../../../../utils/animation/controller/fade_in_animation_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInController());
    controller.setAnimationWithDestination(OnboardingScreen());
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          /*--- Splash Screen Blob1 ---*/
          FadeInAnimation(
            animatePosition: FadeInPosition(
                topAfter: 30, topBefore: 30, rightAfter: 30, rightBefore: -120),
            durationMilliSec: animateDuration,
            child: const Image(
              width: imgSplashScreenBlobSize,
              height: imgSplashScreenBlobSize,
              image: AssetImage(imgSplashScreenBlob1),
            ),
          ),
          /*--- Splash Screen Blob2 ---*/
          FadeInAnimation(
              animatePosition: FadeInPosition(
                  bottomAfter: 20,
                  bottomBefore: 20,
                  leftAfter: 30,
                  leftBefore: -120),
              durationMilliSec: animateDuration,
              child: const Image(
                width: imgSplashScreenBlobSize,
                height: imgSplashScreenBlobSize,
                image: AssetImage(imgSplashScreenBlob2),
              )),
          /*--- Splash Screen Heading ---*/
          FadeInAnimation(
              animatePosition: FadeInPosition(
                  topBefore: 100,
                  topAfter: 100,
                  leftAfter: 30,
                  leftBefore: -120),
              durationMilliSec: animateDuration,
              child: Text(
                txtSplashScreenHeading,
                style: Theme.of(context).textTheme.headlineMedium,
              )),
          /*--- Splash Screen SubHeading ---*/
          FadeInAnimation(
              animatePosition: FadeInPosition(
                  bottomBefore: 140,
                  bottomAfter: 140,
                  rightAfter: 30,
                  rightBefore: -120),
              durationMilliSec: animateDuration,
              child: Text(
                txtSplashScreenSubHeading,
                style: Theme.of(context).textTheme.titleMedium,
              )),
          /*--- Splash Screen Image ---*/
          FadeInAnimation(
              animatePosition: FadeInPosition(
                bottomAfter: 120,
                bottomBefore: -100,
              ),
              durationMilliSec: animateDuration,
              child: Image(
                width: size.width,
                height: size.height * 0.6,
                image: const AssetImage(imgSplashScreenImage),
              )),
        ],
      ),
    );
  }
}
