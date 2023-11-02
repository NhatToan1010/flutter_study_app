import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/features/home/controllers/dashboard/CategoriesController.dart';
import 'package:get/get.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({
    super.key,
  });

  final controller = Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemCount: controller.dataTitle.length,
        itemBuilder: (context, index) => Column(
          children: [
            // --- Categories Frame ---
            Container(
                margin: const EdgeInsets.only(right: 15.0),
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
                // --- Categories Icon ---
                child: TextButton(
                    onPressed: () {},
                    child: Image(
                        width: 40,
                        height: 40,
                        image: AssetImage(controller.dataImage[index])))),
            const SizedBox(height: 5.0),
            // --- Categories Title ---
            Text(
              controller.dataTitle[index],
              style: const TextStyle(
                  color: blueAccent, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
