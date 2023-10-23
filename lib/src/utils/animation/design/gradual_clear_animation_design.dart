import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/integer_values.dart';
import 'package:flutter_study_app/src/utils/animation/controller/gradual_clear_animation_controller.dart';
import 'package:get/get.dart';

class GradualClearAnimation extends StatelessWidget {
  GradualClearAnimation({super.key, required this.child});

  final controller = Get.put(GradualClearController());
  final Widget child;

  @override
  Widget build(BuildContext context) {
    controller.setAnimation();
    return Obx(() => AnimatedOpacity(
          opacity: controller.isAnimated.value ? 1 : 0,
          duration: const Duration(milliseconds: animateDuration),
          child: child,
        ));
  }
}
