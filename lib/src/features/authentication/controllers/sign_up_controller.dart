import 'package:flutter/cupertino.dart';
import 'package:flutter_study_app/src/features/authentication/models/user_model.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/dashboard.dart';
import 'package:flutter_study_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_study_app/src/repository/authentication_repository/user_repository.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final userName = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void createUser(UserModel user) {
    userRepo.createUser(user);
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(user.email, user.password);
  }
}
