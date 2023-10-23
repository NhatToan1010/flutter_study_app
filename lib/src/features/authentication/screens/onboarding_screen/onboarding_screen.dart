import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_study_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: controller.pages,
            liquidController: controller.liquidController,
            onPageChangeCallback: controller.onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          /*--- Smooth Indicator Widget ---*/
          Obx(
            () => Positioned(
                bottom: 270,
                left: 25,
                child: AnimatedSmoothIndicator(
                  count: 3,
                  activeIndex: controller.pageIndex.value,
                  effect: const ExpandingDotsEffect(
                    dotWidth: 8.0,
                    dotHeight: 8.0,
                    activeDotColor: darkColor500,
                    dotColor: darkColor200,
                  ),
                )),
          ),
          /*--- Button Skip ---*/
          Positioned(
            right: 24,
            top: 32,
            child: TextButton(
                onPressed: () => controller.skip(lastIndex: 2),
                child: Text(
                  "Skip",
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          ),
          /*--- Button Go to Welcome Screen ---*/
          Positioned(
              bottom: 60,
              child: ElevatedButton(
                onPressed: () => controller.goTo(const WelcomeScreen()),
                child: Text("Get Started",
                    style: GoogleFonts.varela(
                        fontWeight: FontWeight.bold,
                        fontSize: txtHeadlineSmallSize)),
              ))
        ],
      ),
    );
  }
}
