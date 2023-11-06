import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/authentication/screens/sign_in_screen/sign_in_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpDecision extends StatelessWidget {
  const SignUpDecision({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;

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
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  fixedSize: Size(size.width * 0.07, size.height * 0.07),
              shape: const CircleBorder(),),
              child: const Image(image: AssetImage(icGoogle)),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  fixedSize: Size(size.width * 0.07, size.height * 0.07),
                  shape: const CircleBorder()),
              child: const Image(image: AssetImage(icFacebook)),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  fixedSize: Size(size.width * 0.07, size.height * 0.07),
                  shape: const CircleBorder(),),
              child: const Image(image: AssetImage(icLinkedin)),
            ),
          ],
        ),
        /* --- End of Third Party --- */
        const SizedBox(height: 20.0),
        /* --- Footer Go to Sign-in screen --- */
        TextButton(
            onPressed: () => Get.to(const SignInScreen()),
            child: Text.rich(TextSpan(
                text: txtSignUpFooter,
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(
                      text: txtSignIn,
                      style: GoogleFonts.varela(
                          color: darkColor700,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold))
                ]))),
        /* --- End of Footer --- */
      ],
    );
  }
}
