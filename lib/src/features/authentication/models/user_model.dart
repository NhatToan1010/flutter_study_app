import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String userName;
  final String email;
  final String password;

  UserModel(
      {this.id,
      required this.userName,
      required this.email,
      required this.password});

  toJSON() {
    return {"UserName": userName, "Email": email, "Password": password};
  }

  // --- Fetch user data form FireStore to UserModel
  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
        id: document.id,
        userName: data["UserName"],
        email: data["Email"],
        password: data["Password"]);
  }
}
