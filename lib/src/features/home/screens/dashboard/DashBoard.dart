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
              // --- Banner ---
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    // --- Card ---
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: lightBg.withOpacity(0.3)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // --- Book Mark & Card Image ---
                              const Flexible(
                                  child: Icon(
                                Icons.bookmark,
                                color: darkColor100,
                              )),
                              Flexible(
                                  child: Image(
                                      height: size.height * 0.15,
                                      image: const AssetImage(imgCourseCoding)))
                            ],
                          ),
                          const SizedBox(height: 35.0),
                          // --- Title & Subtitle ---
                          Text(
                            "Programming",
                            style: txtTheme.labelMedium,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "12 Courses",
                            style: txtTheme.bodyMedium
                                ?.apply(color: Colors.grey.withOpacity(0.7)),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Column(
                      children: [
                        // --- Card ---
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: lightBg.withOpacity(0.3)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // --- Book mark & Card Image
                                  const Flexible(
                                      child: Icon(
                                    Icons.bookmark,
                                    color: darkColor100,
                                  )),
                                  Flexible(
                                      child: Image(
                                          height: size.height * 0.1,
                                          image: const AssetImage(
                                              imgCourseDesigning)))
                                ],
                              ),
                              // --- Title & Subtitle ---
                              Text(
                                "Design",
                                style: txtTheme.labelMedium,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "7 Courses",
                                style: txtTheme.bodyMedium?.apply(
                                    color: Colors.grey.withOpacity(0.7)),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        // --- Button View All ---
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                    color: blueAccent, width: 2)),
                            child: Text(
                              txtViewAll,
                              style: txtTheme.labelMedium
                                  ?.apply(color: blueAccent),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // --- Popular Courses ---
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
