import 'package:get/get.dart';

class GradualClearController extends GetxController {
  static GradualClearController get find => Get.find();
  RxBool isAnimated = false.obs;

  Future setAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    isAnimated.value = true;
  }
}
