import 'package:flutter_study_app/src/features/home/models/dashboard/categories_model.css.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController{

  static CategoriesController get find => Get.find();
  final list = CategoriesModel.listModel;

}