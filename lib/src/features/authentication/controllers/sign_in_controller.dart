import 'package:flutter/cupertino.dart';
import 'package:flutter_study_app/src/features/authentication/models/user_model.dart';
import 'package:flutter_study_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final userName = TextEditingController();

  final userAuth = Get.put(AuthenticationRepository());

  void loginUser(String email, String password) {
    userAuth.loginUserWithEmailAndPassword(email, password);
  }
}