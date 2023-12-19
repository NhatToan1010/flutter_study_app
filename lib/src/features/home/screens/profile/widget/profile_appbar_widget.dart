import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:ionicons/ionicons.dart';

class ProfileAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppbarWidget({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Ionicons.arrow_back, color: darkColor700),
        onPressed: () {},
        splashRadius: 1,
      ),
      title: Text(
        txtProfile,
        style: txtTheme.titleMedium,
      ),
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.black),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.notifications_circle,
                color: lightColor500,
              )),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}