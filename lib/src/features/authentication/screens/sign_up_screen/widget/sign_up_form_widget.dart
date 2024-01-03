import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/authentication/controllers/sign_up_controller.dart';
import 'package:flutter_study_app/src/features/authentication/models/user_model.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/dashboard.dart';
import 'package:flutter_study_app/src/utils/widget/fill_in_textfield_widget.dart';
import 'package:flutter_study_app/src/utils/widget/model/fill_in_textfield_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /* --- FullName Fill in --- */
          TextFormField(
            controller: controller.fullName,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person_2_outlined),
              border: const OutlineInputBorder(),
              label: Text(
                txtFullName,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          /* --- Email Fill in --- */
          TextFormField(
            controller: controller.email,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.email_outlined),
              border: const OutlineInputBorder(),
              label: Text(
                txtEmail,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          /* --- Username Fill in --- */
          TextFormField(
            controller: controller.userName,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              border: const OutlineInputBorder(),
              label: Text(
                txtUsername,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          /* --- Password Fill in --- */
          TextFormField(
            controller: controller.password,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock_outline_rounded),
              suffixIcon: const Icon(Icons.remove_red_eye_rounded),
              border: const OutlineInputBorder(),
              label: Text(
                txtPassword,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          /* --- Button Sign Up --- */
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  final UserModel user = UserModel(
                      userName: controller.userName.text.trim(),
                      email: controller.email.text.trim(),
                      password: controller.password.text.trim(),
                      fullName: controller.fullName.text.trim());
                  if (formKey.currentState!.validate()) {
                    controller.createUser(user);
                  }
                },
                child: Text(
                  txtSignUp.toUpperCase(),
                )),
          )
        ],
      ),
    );
  }
}
