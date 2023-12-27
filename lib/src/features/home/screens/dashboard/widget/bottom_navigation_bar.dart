import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/dashboard.dart';
import 'package:flutter_study_app/src/features/home/screens/profile/profile_screen.dart';
import 'package:get/get.dart';

class DashBoardBottomNavigationBar extends StatelessWidget {
  const DashBoardBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
              onPressed: () {},
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
              onPressed: () => Get.to(const ProfileScreen()),
              icon: const Icon(Icons.person_outline_rounded),
              splashRadius: 1,
            ),
            label: "Profile"),
      ],
    );
  }
}
