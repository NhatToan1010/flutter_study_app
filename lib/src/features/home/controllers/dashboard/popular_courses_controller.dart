import 'package:flutter_study_app/src/features/home/models/dashboard/popular_courses.css.dart';
import 'package:get/get.dart';

class PopularCoursesController {
  static PopularCoursesController get find => Get.find();

  final list = PopularCoursesModel.listModel;
}