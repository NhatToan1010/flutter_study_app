import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/utils/animation/controller/fade_in_animation_controller.dart';
import 'package:flutter_study_app/src/utils/animation/model/fade_in_animation_model.dart';
import 'package:get/get.dart';

class FadeInAnimation extends StatelessWidget {
  FadeInAnimation({
    super.key,
    this.animatePosition,
    required this.durationMilliSec,
    required this.child,
  });

  final controller = Get.put(FadeInController());
  final FadeInPosition? animatePosition;
  final int durationMilliSec;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        top: controller.isAnimated.value
            ? animatePosition!.topAfter
            : animatePosition!.topBefore,
        bottom: controller.isAnimated.value
            ? animatePosition!.bottomAfter
            : animatePosition!.bottomBefore,
        right: controller.isAnimated.value
            ? animatePosition!.rightAfter
            : animatePosition!.rightBefore,
        left: controller.isAnimated.value
            ? animatePosition!.leftAfter
            : animatePosition!.leftBefore,
        duration: Duration(milliseconds: durationMilliSec),
        child: AnimatedOpacity(
          opacity: controller.isAnimated.value ? 1 : 0,
          duration: Duration(milliseconds: durationMilliSec),
          child: child,
        ),
      ),
    );
  }
}
