import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key, required this.title, required this.body,
  });

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          body,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}