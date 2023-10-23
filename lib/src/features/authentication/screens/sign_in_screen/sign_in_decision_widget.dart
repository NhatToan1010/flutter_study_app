import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/authentication/models/sign_in_option_model.dart';
import 'package:flutter_study_app/src/features/authentication/screens/sign_in_screen/option_sign_in_widget.dart';
import 'package:flutter_study_app/src/features/authentication/screens/sign_up_screen/sign_up_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInDecision extends StatelessWidget {
  const SignInDecision({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100.0,
              height: 2.0,
              color: darkColor700,
            ),
            const SizedBox(width: 5.0),
            Text(
              "OR",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(width: 5.0),
            Container(
              width: 100.0,
              height: 2.0,
              color: darkColor700,
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        /* --- Third Party --- */
        OptionSignIn(
          model: OptionSignInModel(title: txtGoogle, icon: icGoogle),
        ),
        const SizedBox(height: 30.0),
        /* --- Footer Go to Sign up Screen ---*/
        TextButton(
            onPressed: () => Get.to(const SignUpScreen()),
            child: Text.rich(TextSpan(
                text: txtSignInFooter,
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(
                    text: txtSignUp,
                    style: GoogleFonts.varela(
                      color: darkColor700,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]))),
        /* --- End of Footer ---*/
      ],
    );
  }
}
