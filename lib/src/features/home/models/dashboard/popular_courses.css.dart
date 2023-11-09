import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';

class PopularCoursesModel {
  final String image;
  final String title;
  final String subtitle;
  final String amountLesson;
  final String timeCost;
  final String amountRating;

  PopularCoursesModel(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.amountLesson,
      required this.timeCost,
      required this.amountRating});

  static List<PopularCoursesModel> listModel = [
    PopularCoursesModel(
        image: imgCourseFlutter,
        title: txtCourseFlutter,
        subtitle: txtLorem,
        amountLesson: "10",
        timeCost: "120",
        amountRating: "40"),
    PopularCoursesModel(
        image: imgCoursePython,
        title: txtCoursePython,
        subtitle: txtLorem,
        amountLesson: "12",
        timeCost: "130",
        amountRating: "55"),
    PopularCoursesModel(
        image: imgCourseJava,
        title: txtCourseJava,
        subtitle: txtLorem,
        amountLesson: "14",
        timeCost: "135",
        amountRating: "70"),
  ];
}
