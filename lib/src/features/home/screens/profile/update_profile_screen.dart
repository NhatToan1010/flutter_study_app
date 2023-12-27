import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/authentication/models/user_model.dart';
import 'package:flutter_study_app/src/features/home/controllers/profile/profile_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final controller = Get.put(ProfileController());

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
              Icons.check,
              color: CupertinoColors.activeGreen,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(defaultPaddingSize),
          /* --- Wrap Widget with FutureBuilder --- */
          child: FutureBuilder(
            future: controller.getUserDetails(),
            builder: (context, snapshot) {
              /* --- When User have been connected --- */
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  /* --- Return Update Profile Screen UI --- */
                  UserModel userData = snapshot.data as UserModel;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /* --- Avatar --- */
                      Stack(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
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
                                width: 32,
                                height: 32,
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
                      const SizedBox(height: 10.0),
                      /* --- Name & Class --- */
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            txtName,
                            style: txtTheme.labelMedium,
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            txtBeginner,
                            style: txtTheme.bodySmall
                                ?.apply(color: darkColor200),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      /* --- Editable Sections --- */
                      Form(
                          child: Column(
                        children: [
                          /* --- Email --- */
                          TextFormField(
                            initialValue: userData.email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email_outlined),
                              border: const OutlineInputBorder(),
                              label: Text(
                                txtEmail,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          /* --- Username --- */
                          TextFormField(
                            initialValue: userData.userName,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person),
                              border: const OutlineInputBorder(),
                              label: Text(
                                txtUsername,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          /* --- Password --- */
                          TextFormField(
                            initialValue: userData.password,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon:
                                  const Icon(Icons.lock_outline_rounded),
                              suffixIcon:
                                  const Icon(Icons.remove_red_eye_rounded),
                              border: const OutlineInputBorder(),
                              label: Text(
                                txtPassword,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  );
                }
                /* --- When Connection error --- */
                else {
                  return Center(
                    child: Text(
                      "Something went wrong!",
                      style: txtTheme.titleSmall
                          ?.apply(color: Colors.grey.withOpacity(0.7)),
                    ),
                  );
                }
              }
              /* --- When waiting for Connection --- */
              else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
