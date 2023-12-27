import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_study_app/src/repository/authentication_repository/user_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get find => Get.find();

  final authRepo = Get.put(AuthenticationRepository());
  final userRepo = Get.put(UserRepository());

  // --- Get User Email and pass into UserRepository to fetch user record
  getUserDetails() {
    final email = authRepo.firebaseUser.value?.email;
    if (email != null) {
      return userRepo.getUserDetails(email);
    } else {
      Get.snackbar("Error", "Something went wrong!",
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
  }
  getAllUser() {
    return userRepo.getAllUser();
  }
}