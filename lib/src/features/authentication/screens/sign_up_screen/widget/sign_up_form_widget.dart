import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/utils/widget/fill_in_textfield_widget.dart';
import 'package:flutter_study_app/src/utils/widget/model/fill_in_textfield_model.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /* --- Email Fill in --- */
        FillInTextField(
            model: FillInTextFieldModel(
                keyboardType: TextInputType.emailAddress,
                title: txtEmail,
                prefixIcon: Icons.email_outlined)),
        const SizedBox(height: 10.0),
        /* --- Username Fill in --- */
        FillInTextField(
            model: FillInTextFieldModel(
                title: txtUsername, prefixIcon: Icons.person)),
        const SizedBox(height: 10.0),
        /* --- Password Fill in --- */
        FillInTextField(
            model: FillInTextFieldModel(
                keyboardType: TextInputType.visiblePassword,
                title: txtPassword,
                prefixIcon: Icons.lock_outline_rounded,
                suffixIcon: Icons.remove_red_eye_rounded)),
        const SizedBox(height: 10.0),
        /* --- Confirm password Fill in --- */
        FillInTextField(
            model: FillInTextFieldModel(
                keyboardType: TextInputType.visiblePassword,
                title: txtConfirmPassword,
                prefixIcon: Icons.check_circle_outline_rounded,
                suffixIcon: Icons.remove_red_eye_rounded)),
        const SizedBox(height: 20.0),
        /* --- Button Sign Up --- */
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                txtSignUp.toUpperCase(),
              )),
        )
      ],
    );
  }
}
