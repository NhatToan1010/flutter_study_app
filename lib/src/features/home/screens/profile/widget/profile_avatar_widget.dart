import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/home/screens/profile/update_profile_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            // --- Avatar ---
            Stack(
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(500.0),
                    child: const Image(
                      image: AssetImage(imgAvatar1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: blueAccent),
                      child: const Icon(
                        Ionicons.pencil_outline,
                        color: lightColor500,
                        size: 16,
                      )),
                ),
              ],
            ),
            const SizedBox(width: 10.0),
            // --- Name & Class ---
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txtName,
                  style: txtTheme.labelMedium,
                ),
                const SizedBox(height: 5.0),
                Text(
                  txtBeginner,
                  style:
                  txtTheme.bodySmall?.apply(color: darkColor200),
                ),
              ],
            )
          ],
        ),
        // --- Edit Profile Button ---
        ElevatedButton(
            onPressed: () => Get.to(const UpdateProfileScreen()),
            style: ElevatedButton.styleFrom(
                backgroundColor: blueAccent,
                foregroundColor: lightColor500,
                fixedSize: const Size(140, 40),
                textStyle: txtTheme.labelMedium,
                alignment: Alignment.center),
            child: const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(txtEditProfile),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: lightColor500,
                  size: 20,
                )
              ],
            ))
      ],
    );
  }
}