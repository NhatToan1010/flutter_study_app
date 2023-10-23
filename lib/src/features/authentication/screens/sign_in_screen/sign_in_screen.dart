import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/authentication/authenticationBackground.dart';
import 'package:flutter_study_app/src/features/authentication/screens/sign_in_screen/sign_in_decision_widget.dart';
import 'package:flutter_study_app/src/features/authentication/screens/sign_in_screen/sign_in_form_widget.dart';
import 'package:flutter_study_app/src/utils/animation/design/gradual_clear_animation_design.dart';
import 'package:flutter_study_app/src/utils/widget/title_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
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
                GradualClearAnimation(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /* --- Title ---*/
                      const TitleWidget(
                          title: txtSignInHeading, body: txtSignInTitle),
                      const SizedBox(height: 20.0),
                      /* --- Fill in Information --- */
                      Container(
                        width: size.width * 0.8,
                        height: size.height,
                        padding: const EdgeInsets.all(30.0),
                        decoration: const BoxDecoration(
                            color: lightColor200,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SignInFormWidget(),
                            SizedBox(height: 20.0),
                            SignInDecision()
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
