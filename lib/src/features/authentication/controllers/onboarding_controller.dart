import 'package:flutter/cupertino.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/authentication/models/onboarding_model.dart';
import 'package:flutter_study_app/src/features/authentication/screens/onboarding_screen/widget/onboarding_page_widget.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class OnboardingController extends GetxController{
  static OnboardingController get find => Get.find();

  final liquidController = LiquidController();
  RxInt pageIndex = 0.obs;
  final pages = [
    OnboardingPageWidget(
        model: OnboardingModel(
            background: imgOnboardingBackground1,
            image: imgOnboardingImage1,
            title: txtOnboardingTitle1,
            body: txtOnboardingBody1,
            counter: txtOnboardingCounter1)),
    OnboardingPageWidget(
        model: OnboardingModel(
            background: imgOnboardingBackground2,
            image: imgOnboardingImage2,
            title: txtOnboardingTitle2,
            body: txtOnboardingBody2,
            counter: txtOnboardingCounter2)),
    OnboardingPageWidget(
        model: OnboardingModel(
            background: imgOnboardingBackground3,
            image: imgOnboardingImage3,
            title: txtOnboardingTitle3,
            body: txtOnboardingBody3,
            counter: txtOnboardingCounter3)),
  ];

  void onPageChangeCallback(int activePageIndex) {
    pageIndex.value = activePageIndex;
  }

  void skip({required int lastIndex}) => liquidController.jumpToPage(page: lastIndex);

  void goTo(Widget screen) => Get.to(screen);
}