import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/authentication/screens/forgot_password/forgot_password_email_option.dart';
import 'package:flutter_study_app/src/features/authentication/screens/forgot_password/widget/forgot_password_selection_widget.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/dashboard.dart';
import 'package:flutter_study_app/src/utils/widget/fill_in_textfield_widget.dart';
import 'package:flutter_study_app/src/utils/widget/model/fill_in_textfield_model.dart';
import 'package:flutter_study_app/src/utils/widget/title_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /* --- Email/Username Fill in --- */
          FillInTextField(
              model: FillInTextFieldModel(
                  keyboardType: TextInputType.emailAddress,
                  title: txtEmailUsername,
                  prefixIcon: Icons.person)),
          const SizedBox(height: 10.0),
          /* --- Password Fill in --- */
          FillInTextField(
              model: FillInTextFieldModel(
                  keyboardType: TextInputType.visiblePassword,
                  title: txtPassword,
                  prefixIcon: Icons.lock_outline_rounded,
                  suffixIcon: Icons.remove_red_eye_rounded)),
          const SizedBox(height: 10.0),
          /* --- Forgot Password check ---*/
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0))),
                    context: context,
                    builder: (context) => Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          /* --- Title --- */
                          const TitleWidget(
                              title: txtMakeSelection,
                              body: txtForgotPasswordSelect),
                          const SizedBox(height: 10.0),
                          /* --- Email Option --- */
                          ForgotPasswordSelection(
                              onTap: () => Get.to(const ForgotPasswordEmailOptionScreen()),
                              icon: const Icon(
                                Icons.mail_outline_rounded,
                                size: 50.0,
                              ),
                              title: txtEmail,
                              body: txtEmailSolution),
                          const SizedBox(height: 20.0),
                          /* --- Phone Option ---*/
                          ForgotPasswordSelection(
                              onTap: () {},
                              icon: const Icon(
                                Icons.mobile_friendly_rounded,
                                size: 50.0,
                              ),
                              title: txtPhoneNo,
                              body: txtPhoneSolution),
                        ],
                      ),
                    ),
                  );
                },
                child: Text(
                  txtForgotPassword,
                  style: GoogleFonts.varela(
                      color: darkColor700,
                      fontSize: txtBodySmallSize,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                )),
          ),
          const SizedBox(height: 20.0),
          /* --- Button Sign-in --- */
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(const DashBoard()),
                child: Text(
                  txtSignIn.toUpperCase(),
                )),
          )
        ],
      ),
    );
  }
}
