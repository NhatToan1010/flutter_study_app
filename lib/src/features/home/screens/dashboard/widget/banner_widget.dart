import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.size,
    required this.txtTheme,
  });

  final Size size;
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}