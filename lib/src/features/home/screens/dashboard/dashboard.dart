import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/widget/appbar.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/widget/banner_widget.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: whiteColor,
        type: BottomNavigationBarType.fixed,
        fixedColor: blueAccent,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () => Get.to(const DashBoard()),
                icon: const Icon(Icons.home_outlined),
                splashRadius: 1,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () => Get.to(OnboardingScreen()),
                icon: const Icon(Icons.play_lesson_outlined),
                splashRadius: 1,
              ),
              label: "Courses"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_outlined),
                splashRadius: 1,
              ),
              label: "News"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_outline_rounded),
                splashRadius: 1,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
