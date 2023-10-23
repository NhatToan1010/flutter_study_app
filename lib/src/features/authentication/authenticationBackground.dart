import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/integer_values.dart';

class AuthBackground extends StatefulWidget {
  const AuthBackground({super.key});

  @override
  State<AuthBackground> createState() => _AuthBackgroundState();
}

class _AuthBackgroundState extends State<AuthBackground> {
  bool isAnimated = false;

  @override
  void initState() {
    setAnimation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnimatedOpacity(
      opacity: isAnimated? 1 : 0,
      duration: const Duration(milliseconds: animateDuration),
      child: Stack(
        children: [
          Positioned(
            top: 30,
            right: -170,
            child: Image(
              width: size.width,
              height: size.height * 0.07,
              image: const AssetImage(imgWelcomeScreenBackgroundYellow),
            ),
          ),
          Positioned(
            bottom: 60,
            left: -160,
            child: Image(
              width: size.width,
              height: size.height * 0.1,
              image: const AssetImage(imgWelcomeScreenBackgroundPurple),
            ),
          ),
          Positioned(
            top: 60,
            left: -230,
            child: Image(
              width: size.width,
              height: size.height * 0.2,
              image: const AssetImage(imgWelcomeScreenBackgroundBlue),
            ),
          ),
          Positioned(
            bottom: 80,
            right: -190,
            child: Image(
              width: size.width,
              height: size.height * 0.2,
              image: const AssetImage(imgWelcomeScreenBackgroundGreen),
            ),
          ),
        ],
      ),
    );
  }

  Future setAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => isAnimated = true);
  }
}
