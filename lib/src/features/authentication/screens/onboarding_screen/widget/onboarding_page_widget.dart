import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/features/authentication/models/onboarding_model.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: lightColor500,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: -230,
              child: Image(
                  width: size.width,
                  height: size.height,
                  image: AssetImage(model.background))),
          Positioned(
            top: 40,
            child: Image(
                width: size.width,
                height: size.height * 0.5,
                image: AssetImage(model.image)),
          ),
          Positioned(
            bottom: 170,
            left: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 5.0),
                Text(
                  model.body,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
          Positioned(
            bottom: 140,
            child: Text(
              model.counter,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );

  }
}
