import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/integer_values.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/authentication/authenticationBackground.dart';
import 'package:flutter_study_app/src/features/authentication/screens/sign_in_screen/sign_in_screen.dart';
import 'package:flutter_study_app/src/features/authentication/screens/sign_up_screen/sign_up_screen.dart';
import 'package:flutter_study_app/src/utils/animation/controller/fade_in_animation_controller.dart';
import 'package:flutter_study_app/src/utils/animation/design/fade_in_animation_design.dart';
import 'package:flutter_study_app/src/utils/animation/model/fade_in_animation_model.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInController());
    controller.setAnimation();
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const AuthBackground(),
          /*--- Welcome Screen Image ---*/
          FadeInAnimation(
              animatePosition: FadeInPosition(
                  topAfter: 130,
                  topBefore: 50,),
              durationMilliSec: animateDuration,
              child: Image(
                width: size.width,
                height: size.height * 0.4,
                image: const AssetImage(imgWelcomeScreenImage),
              )),
          /*--- End of Welcome Screen Image ---*/
          /*--- Welcome Screen Title ---*/
          FadeInAnimation(
              animatePosition: FadeInPosition(
                  bottomBefore: 200,
                  bottomAfter: 200,
                  leftAfter: 100,
                  leftBefore: -80),
              durationMilliSec: animateDuration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    txtWelcomeScreenTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    txtWelcomeScreenBody,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              )),
          /*--- End of Welcome Screen Title ---*/
          /*--- Group Button Sign-in/Sign up ---*/
          FadeInAnimation(
              animatePosition:
                  FadeInPosition(bottomAfter: 50, bottomBefore: -100),
              durationMilliSec: animateDuration,
              child: Column(
                children: [
                  OutlinedButton(
                      onPressed: () => Get.to(const SignInScreen()),
                      child: Text(
                        txtSignIn.toUpperCase(),
                        style: GoogleFonts.varela(
                            fontWeight: FontWeight.bold,
                            fontSize: txtTitleSmallSize,
                            color: darkColor500),
                      )),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                      onPressed: () => Get.to(const SignUpScreen()),
                      child: Text(
                        txtSignUp.toUpperCase(),
                        style: GoogleFonts.varela(
                            fontWeight: FontWeight.bold,
                            fontSize: txtTitleSmallSize,
                            color: lightColor500),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
