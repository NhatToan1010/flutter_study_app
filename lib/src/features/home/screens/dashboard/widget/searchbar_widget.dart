import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.size,
    required this.txtTheme,
  });

  final Size size;
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        width: size.width,
        height: defaultHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 2, color: blueAccent),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              txtSearch,
              style: txtTheme.bodyMedium
                  ?.apply(color: Colors.grey.withOpacity(0.7)),
            ),
            const Icon(
              Icons.search_rounded,
              color: blueAccent,
            )
          ],
        ));
  }
}