import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/repository/authentication_repository/authentication_repository.dart';

class LogoutButtonWidget extends StatelessWidget {
  const LogoutButtonWidget({
    super.key,
    required this.size,
    required this.txtTheme,
  });

  final Size size;
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => AuthenticationRepository.instance.logout(),
      style: ElevatedButton.styleFrom(
          backgroundColor: blueAccent,
          foregroundColor: lightColor500,
          fixedSize: Size(size.width, 40),
          textStyle: txtTheme.labelMedium,
          alignment: Alignment.center),
      icon: const Icon(
        Icons.logout,
        color: lightColor500,
        size: 20,
      ),
      label: const Text(txtLogout),);
  }
}