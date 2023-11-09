import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/home/controllers/dashboard/popular_courses_controller.dart';
import 'package:get/get.dart';

class PopularCoursesWidget extends StatelessWidget {
  PopularCoursesWidget({
    super.key,
    required this.size,
    required this.txtTheme,
  });

  final Size size;
  final TextTheme txtTheme;
  final controller = Get.put(PopularCoursesController());

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
            child: ListView.builder(
              itemCount: controller.list.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  Container(
                margin: const EdgeInsets.only(right: 20.0),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 2)
                ]),
                width: coursesSizeWidth,
                child: Column(
                  children: [
                    // --- Image ---
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      child: Image(
                        width: coursesSizeWidth,
                        height: coursesSizeHeight,
                        fit: BoxFit.fill,
                        image: AssetImage(controller.list[index].image),
                      ),
                    ),
                    // --- Content ---
                    Container(
                      height: coursesSizeHeight,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
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
                                controller.list[index].title,
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
                            controller.list[index].subtitle,
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
                                    "${controller.list[index].amountLesson} $txtLessons",
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
                                    "${controller.list[index].timeCost} $txtHours",
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
                                    " ${controller.list[index].amountRating} $txtReviews",
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
                                            color: blueAccent, width: 2.0)),
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
            ),
          ),
        ),
      ],
    );
  }
}
