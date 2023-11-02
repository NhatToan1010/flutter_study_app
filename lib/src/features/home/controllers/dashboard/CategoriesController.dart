import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController{

  static CategoriesController get find => Get.find();

  final dataTitle = [
    txtPython,
    txtJava,
    txtFlutter,
    txtGraphicDesign,
    txtArtificialIntelligence,
    txtPython,
    txtJava,
    txtFlutter,
    txtGraphicDesign,
    txtArtificialIntelligence
  ];
  final dataImage = [
    icPython,
    icJava,
    icFlutter,
    icGraphicDesign,
    icArtificialIntelligence,
    icPython,
    icJava,
    icFlutter,
    icGraphicDesign,
    icArtificialIntelligence
  ];

}