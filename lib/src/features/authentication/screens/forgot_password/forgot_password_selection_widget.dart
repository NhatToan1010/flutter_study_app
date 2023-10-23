import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';

class ForgotPasswordSelection extends StatelessWidget {
  const ForgotPasswordSelection({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
    required this.body,
  });

  final Icon icon;
  final String title, body;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.all(
                Radius.circular(5.0))),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 5.0),
                Text(
                  body,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            )
          ],
        ),),
    );
  }
}
