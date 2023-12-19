import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/home/screens/profile/profile_screen.dart';
import 'package:flutter_study_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

class DashboardAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      // --- Menu ---
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu_rounded),
        color: Colors.black,
        splashRadius: 1,
      ),
      // --- Logo&Name ---
      title: Text(
        txtLabel,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      actions: [
        // --- Avatar ---
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
            child: IconButton(
              onPressed: () {
                Get.to(const ProfileScreen());
              },
              icon: const Icon(Icons.person),
              splashRadius: 1,
            ))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}