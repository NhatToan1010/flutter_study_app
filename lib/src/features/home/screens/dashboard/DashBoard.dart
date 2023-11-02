import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/home/models/dashboard/CategoriesModel.css.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/CategoriesWidget.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/DashBoard.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/HeaderWidget.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/SearchBarWidget.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu_rounded,
          color: Colors.black,
        ),
        title: Text(
          txtLabel,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        actions: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
                splashRadius: 1,
              ))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Heading ---
            HeaderWidget(txtTheme: txtTheme),
            const SizedBox(height: 20.0),
            // --- Search Bar ---
            SearchBarWidget(size: size, txtTheme: txtTheme),
            const SizedBox(height: 20.0),
            // --- Categories
            CategoriesWidget(),
            const SizedBox(height: 20.0),
            // --- Popular Courses
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  txtPopularCourses,
                  style: txtTheme.titleSmall,
                ),
                const Text(
                  txtViewAll,
                  style: TextStyle(
                      fontSize: 15,
                      color: blueAccent,
                      fontStyle: FontStyle.italic),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

