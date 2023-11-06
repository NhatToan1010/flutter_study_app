import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/features/authentication/models/sign_in_option_model.dart';

class OptionSignIn extends StatelessWidget {
  const OptionSignIn({
    required this.model,
    super.key,
  });
  final OptionSignInModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
          onPressed: () {},
          icon: Image(
            height: 20.0,
            image: AssetImage(model.icon),
          ),
          label: Text(model.title)),
    );
  }
}