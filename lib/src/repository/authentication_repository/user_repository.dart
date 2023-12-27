import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/features/authentication/models/user_model.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get find => Get.find();

  final db = FirebaseFirestore.instance;

  // --- Store User Data to FireStore ---
  Future<void> createUser(UserModel user) async {
      await db.collection("Users").add(user.toJSON())
        .whenComplete(
            () => Get.snackbar(
              "Success", "Your account have been created!",
              backgroundColor: greenColor.withOpacity(0.1),
              colorText: greenColor,
              snackPosition: SnackPosition.BOTTOM),
        )
        .catchError((error, stackTrace) {
          Get.snackbar("Error", "Account have not created! Something went wrong!",
            backgroundColor: Colors.redAccent.withOpacity(0.1),
            colorText: Colors.red,
            snackPosition: SnackPosition.BOTTOM);
            print(error.toString());
            return error;
        });
  }

  // --- Fetch Current User or All User to Application ---
  Future<UserModel> getUserDetails(String email) async {
    final snapshot = await db.collection("Users").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
  }

  Future<List<UserModel>> getAllUser() async {
    final snapshot = await db.collection("Users").get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userData;
  }
}
