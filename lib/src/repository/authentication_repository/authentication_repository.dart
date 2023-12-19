import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_study_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/dashboard.dart';
import 'package:flutter_study_app/src/repository/authentication_repository/exceptions/sign_up_email_password_failure.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 5));
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, setInitialScreen);
  }

  setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const DashBoard());
  }

  // Sign Up Feature
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      // --- Most Important ---
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value == null
          ? Get.offAll(() => const WelcomeScreen())
          : Get.offAll(() => const DashBoard());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpEmailAndPasswordFailure();
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  // Sign-in Feature
  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  Future<void> logout() async => auth.signOut();
}
