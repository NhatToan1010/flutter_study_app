import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/home/screens/profile/widget/profile_appbar_widget.dart';
import 'package:flutter_study_app/src/features/home/screens/profile/widget/profile_avatar_widget.dart';
import 'package:flutter_study_app/src/features/home/screens/profile/widget/profile_features_widget.dart';
import 'package:flutter_study_app/src/features/home/screens/profile/widget/profile_logout_button_widget.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Ionicons.arrow_back, color: darkColor700),
          onPressed: () => Get.back(),
          splashRadius: 1,
        ),
        title: Text(
          txtProfile,
          style: txtTheme.titleMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 1,
            icon: const Icon(
              Ionicons.notifications_circle,
              color: darkColor500,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* --- Avatar & Edit Button --- */
              AvatarWidget(txtTheme: txtTheme),
              const SizedBox(height: 30.0),
              const Divider(),
              const SizedBox(height: 10.0),
              /* --- Features --- */
              FeaturesWidget(txtTheme: txtTheme),
              const SizedBox(height: 30.0),
              /* --- Logout Button --- */
              LogoutButtonWidget(size: size, txtTheme: txtTheme)
            ],
          ),
        ),
      ),
    );
  }
}
