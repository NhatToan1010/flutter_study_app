import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/home/models/dashboard/CategoriesModel.css.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/BannerWidget.dart';
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
              BannerWidget(size: size, txtTheme: txtTheme),
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
              const SizedBox(height: 20.0),
              // --- Courses ---
              SizedBox(
                width: size.width,
                height: 300,
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              offset: const Offset(5, 5),
                              blurRadius: 10,
                              spreadRadius: 2
                            )
                          ]
                        ),
                        width: 240,
                        child: Column(
                          children: [
                            // --- Image ---
                            Container(
                              height: 150,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0))),
                              child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage(imgCourseFlutter),
                              ),
                            ),
                            // --- Content ---
                            Container(
                              height: 150,
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: const BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0))),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // --- Title ---
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        txtCourseFlutter,
                                        style: txtTheme.labelMedium,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(width: 5.0),
                                      Text(
                                        txtFree,
                                        style: txtTheme.labelMedium
                                            ?.apply(color: Colors.blueAccent),
                                      )
                                    ],
                                  ),
                                  // --- Subtitle ---
                                  Text(
                                    txtLorem,
                                    style: txtTheme.bodyMedium,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  // --- Lessons & Time
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // --- Lessons ---
                                      Row(
                                        children: [
                                          const Icon(
                                            size: 16.0,
                                            Icons.play_lesson_rounded,
                                            color: blueAccent,
                                          ),
                                          const SizedBox(width: 5.0),
                                          Text(
                                            "10 $txtLessons",
                                            style: txtTheme.bodyMedium?.apply(
                                                color: Colors.grey.withOpacity(0.7)),
                                          )
                                        ],
                                      ),
                                      // --- Time ---
                                      Row(
                                        children: [
                                          const Icon(
                                            size: 16.0,
                                            Icons.timer_outlined,
                                            color: blueAccent,
                                          ),
                                          const SizedBox(width: 5.0),
                                          Text(
                                            "120 $txtHours",
                                            style: txtTheme.bodyMedium?.apply(
                                                color: Colors.grey.withOpacity(0.7)),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  // --- Rating & Button ---
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // --- Rating ---
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 80,
                                            height: 16.0,
                                            child: Expanded(
                                              child: ListView.builder(
                                                scrollDirection: Axis.horizontal,
                                                shrinkWrap: true,
                                                itemCount: 5,
                                                itemBuilder: (context, index) =>
                                                const Icon(
                                                  size: 16.0,
                                                  Icons.star_rounded,
                                                  color: yellowGolden,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            " 40 $txtReviews",
                                            style: txtTheme.bodySmall?.apply(
                                                color: Colors.grey.withOpacity(0.7)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 100,
                                        height: 35,
                                        child: OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                                side: const BorderSide(
                                                    color: blueAccent,
                                                    width: 2.0
                                                )
                                            ),
                                            child: Text(
                                              txtSeeMore,
                                              style: txtTheme.bodyMedium
                                                  ?.apply(color: blueAccent),
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  offset: const Offset(5, 5),
                                  blurRadius: 10,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        width: 240,
                        child: Column(
                          children: [
                            // --- Image ---
                            Container(
                              height: 150,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0))),
                              child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage(imgCoursePython),
                              ),
                            ),
                            // --- Content ---
                            Container(
                              height: 150,
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: const BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0))),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // --- Title ---
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        txtCoursePython,
                                        style: txtTheme.labelMedium,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(width: 5.0),
                                      Text(
                                        txtFree,
                                        style: txtTheme.labelMedium
                                            ?.apply(color: Colors.blueAccent),
                                      )
                                    ],
                                  ),
                                  // --- Subtitle ---
                                  Text(
                                    txtLorem,
                                    style: txtTheme.bodyMedium,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  // --- Lessons & Time
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // --- Lessons ---
                                      Row(
                                        children: [
                                          const Icon(
                                            size: 16.0,
                                            Icons.play_lesson_rounded,
                                            color: blueAccent,
                                          ),
                                          const SizedBox(width: 5.0),
                                          Text(
                                            "10 $txtLessons",
                                            style: txtTheme.bodyMedium?.apply(
                                                color: Colors.grey.withOpacity(0.7)),
                                          )
                                        ],
                                      ),
                                      // --- Time ---
                                      Row(
                                        children: [
                                          const Icon(
                                            size: 16.0,
                                            Icons.timer_outlined,
                                            color: blueAccent,
                                          ),
                                          const SizedBox(width: 5.0),
                                          Text(
                                            "120 $txtHours",
                                            style: txtTheme.bodyMedium?.apply(
                                                color: Colors.grey.withOpacity(0.7)),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  // --- Rating & Button ---
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // --- Rating ---
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 80,
                                            height: 16.0,
                                            child: Expanded(
                                              child: ListView.builder(
                                                scrollDirection: Axis.horizontal,
                                                shrinkWrap: true,
                                                itemCount: 5,
                                                itemBuilder: (context, index) =>
                                                const Icon(
                                                  size: 16.0,
                                                  Icons.star_rounded,
                                                  color: yellowGolden,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            " 40 $txtReviews",
                                            style: txtTheme.bodySmall?.apply(
                                                color: Colors.grey.withOpacity(0.7)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 100,
                                        height: 35,
                                        child: OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                                side: const BorderSide(
                                                    color: blueAccent,
                                                    width: 2.0
                                                )
                                            ),
                                            child: Text(
                                              txtSeeMore,
                                              style: txtTheme.bodyMedium
                                                  ?.apply(color: blueAccent),
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  offset: const Offset(5, 5),
                                  blurRadius: 10,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        width: 240,
                        child: Column(
                          children: [
                            // --- Image ---
                            Container(
                              height: 150,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0))),
                              child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage(imgCourseFlutter),
                              ),
                            ),
                            // --- Content ---
                            Container(
                              height: 150,
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: const BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0))),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // --- Title ---
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        txtCourseFlutter,
                                        style: txtTheme.labelMedium,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(width: 5.0),
                                      Text(
                                        txtFree,
                                        style: txtTheme.labelMedium
                                            ?.apply(color: Colors.blueAccent),
                                      )
                                    ],
                                  ),
                                  // --- Subtitle ---
                                  Text(
                                    txtLorem,
                                    style: txtTheme.bodyMedium,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  // --- Lessons & Time
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // --- Lessons ---
                                      Row(
                                        children: [
                                          const Icon(
                                            size: 16.0,
                                            Icons.play_lesson_rounded,
                                            color: blueAccent,
                                          ),
                                          const SizedBox(width: 5.0),
                                          Text(
                                            "10 $txtLessons",
                                            style: txtTheme.bodyMedium?.apply(
                                                color: Colors.grey.withOpacity(0.7)),
                                          )
                                        ],
                                      ),
                                      // --- Time ---
                                      Row(
                                        children: [
                                          const Icon(
                                            size: 16.0,
                                            Icons.timer_outlined,
                                            color: blueAccent,
                                          ),
                                          const SizedBox(width: 5.0),
                                          Text(
                                            "120 $txtHours",
                                            style: txtTheme.bodyMedium?.apply(
                                                color: Colors.grey.withOpacity(0.7)),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  // --- Rating & Button ---
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // --- Rating ---
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 80,
                                            height: 16.0,
                                            child: Expanded(
                                              child: ListView.builder(
                                                scrollDirection: Axis.horizontal,
                                                shrinkWrap: true,
                                                itemCount: 5,
                                                itemBuilder: (context, index) =>
                                                const Icon(
                                                  size: 16.0,
                                                  Icons.star_rounded,
                                                  color: yellowGolden,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            " 40 $txtReviews",
                                            style: txtTheme.bodySmall?.apply(
                                                color: Colors.grey.withOpacity(0.7)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 100,
                                        height: 35,
                                        child: OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                                side: const BorderSide(
                                                    color: blueAccent,
                                                    width: 2.0
                                                )
                                            ),
                                            child: Text(
                                              txtSeeMore,
                                              style: txtTheme.bodyMedium
                                                  ?.apply(color: blueAccent),
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
