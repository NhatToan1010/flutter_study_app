import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/widget/appbar.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/widget/banner_widget.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/widget/bottom_navigation_bar.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/widget/categories_widget.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/widget/header_widget.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/widget/popular_courses_widget.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/widget/searchbar_widget.dart';
import 'package:get/get.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const DashboardAppbar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(txtTheme: txtTheme),
              const SizedBox(height: 20.0),
              SearchBarWidget(size: size, txtTheme: txtTheme),
              const SizedBox(height: 20.0),
              CategoriesWidget(),
              const SizedBox(height: 20.0),
              BannerWidget(size: size, txtTheme: txtTheme),
              const SizedBox(height: 20.0),
              PopularCoursesWidget(size: size, txtTheme: txtTheme),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const DashBoardBottomNavigationBar(),
    );
  }
}

