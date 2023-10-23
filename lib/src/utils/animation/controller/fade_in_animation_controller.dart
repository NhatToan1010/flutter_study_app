import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter_study_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:get/get.dart';

class FadeInController extends GetxController {
  static FadeInController get find => Get.find();
  RxBool isAnimated = false.obs;

  Future setAnimationWithDestination(Widget screen) async {
    await Future.delayed(const Duration(milliseconds: 500));
    isAnimated.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    isAnimated.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAll(() => screen);
  }

  Future setAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    isAnimated.value = true;
  }
}
