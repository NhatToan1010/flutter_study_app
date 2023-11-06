import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/authentication/authenticationBackground.dart';
import 'package:flutter_study_app/src/features/authentication/screens/sign_up_screen/widget/sign_up_decision_widget.dart';
import 'package:flutter_study_app/src/features/authentication/screens/sign_up_screen/widget/sign_up_form_widget.dart';
import 'package:flutter_study_app/src/utils/animation/design/gradual_clear_animation_design.dart';
import 'package:flutter_study_app/src/utils/widget/title_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultPaddingSize),
            child: Stack(
              alignment: Alignment.center,
              children: [
                /*--- Background ---*/
                SizedBox(
                    width: size.width,
                    height: size.height,
                    child: const AuthBackground()),
                /* --- Fill in Information --- */
                GradualClearAnimation(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleWidget(
                          title: txtSignUpHeading, body: txtSignUpTitle),
                      const SizedBox(height: 20.0),
                      Container(
                        padding: const EdgeInsets.all(30.0),
                        width: size.width * 0.8,
                        height: size.height,
                        decoration: const BoxDecoration(
                            color: lightColor500,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SignUpForm(),
                            const SizedBox(height: 20.0),
                            SignUpDecision(size: size),
                          ],
                        ),
                      ),
                      /* --- End of Fill in information --- */
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
