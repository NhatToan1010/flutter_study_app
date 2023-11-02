import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txtGreeting,
          style: txtTheme.titleSmall,
        ),
        Text(
          txtSubGreeting,
          style: txtTheme.headlineSmall,
        )
      ],
    );
  }
}