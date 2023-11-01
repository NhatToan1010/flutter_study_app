import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/home/models/dashboard/CategoriesModel.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dataTitle = [
      txtPython,
      txtJava,
      txtFlutter,
      txtGraphicDesign,
      txtArtificialIntelligence,
      txtPython,
      txtJava,
      txtFlutter,
      txtGraphicDesign,
      txtArtificialIntelligence
    ];
    final dataImage = [
      icPython,
      icJava,
      icFlutter,
      icGraphicDesign,
      icArtificialIntelligence,
      icPython,
      icJava,
      icFlutter,
      icGraphicDesign,
      icArtificialIntelligence
    ];

    return SizedBox(
        height: 90,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const ClampingScrollPhysics(),
          itemCount: dataTitle.length,
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                    width: 50,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: lightColor700,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 5,
                            offset: const Offset(5, 5))
                      ],
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Image(
                            width: 40,
                            height: 40,
                            image: AssetImage(dataImage[index])))),
                const SizedBox(height: 5.0),
                Text(
                  dataTitle[index],
                  style: const TextStyle(
                      color: blueAccent, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      );
  }
}
