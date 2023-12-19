import 'package:flutter/cupertino.dart';
import 'package:flutter_study_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final userName = TextEditingController();

  void registerUser(String email, String password){
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }
}