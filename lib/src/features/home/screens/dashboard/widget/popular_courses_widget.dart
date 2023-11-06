import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';

class PopularCoursesWidget extends StatelessWidget {
  const PopularCoursesWidget({
    super.key,
    required this.size,
    required this.txtTheme,
  });

  final Size size;
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // --- Title ---
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              txtPopularCourses,
              style: txtTheme.titleSmall,
            ),
            Text(
              txtViewAll,
              style: txtTheme.labelMedium?.apply(color: blueAccent),
            )
          ],
        ),
        const SizedBox(height: 20.0),
        // --- Courses ---
        SizedBox(
          width: size.width,
          height: coursesSize,
          child: Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // --- Flutter Course
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
                  width: coursesSizeWidth,
                  child: Column(
                    children: [
                      // --- Image ---
                      const ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0)),
                        child: Image(
                          width: coursesSizeWidth,
                          height: coursesSizeHeight,
                          fit: BoxFit.fill,
                          image: AssetImage(imgCourseFlutter),
                        ),
                      ),
                      // --- Content ---
                      Container(
                        height: coursesSizeHeight,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
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
                                // --- Button ---
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
                // --- Python Course
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
                  width: coursesSizeWidth,
                  child: Column(
                    children: [
                      // --- Image ---
                      const ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0)),
                        child: Image(
                          width: coursesSizeWidth,
                          height: coursesSizeHeight,
                          fit: BoxFit.fill,
                          image: AssetImage(imgCoursePython),
                        ),
                      ),
                      // --- Content ---
                      Container(
                        height: coursesSizeHeight,
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
                                      "15 $txtLessons",
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
                                      "130 $txtHours",
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
                                // --- Button ---
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
                // --- Java Course ---
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
                  width: coursesSizeWidth,
                  child: Column(
                    children: [
                      // --- Image ---
                      const ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0)),
                        child: Image(
                          width: coursesSizeWidth,
                          height: coursesSizeHeight,
                          fit: BoxFit.fill,
                          image: AssetImage(imgCourseJava),
                        ),
                      ),
                      // --- Content ---
                      Container(
                        height: coursesSizeHeight,
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
                                  txtCourseJava,
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
                                      "14 $txtLessons",
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
                                      "125 $txtHours",
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
                                // --- Button ---
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
    );
  }
}