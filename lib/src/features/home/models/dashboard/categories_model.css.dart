import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';

class CategoriesModel {
  final String image;
  final String title;

  CategoriesModel({required this.image, required this.title});

  static List<CategoriesModel> listModel = [
    CategoriesModel(image: icFlutter, title: txtFlutter),
    CategoriesModel(image:icPython, title: txtPython),
    CategoriesModel(image:icJava, title: txtJava),
    CategoriesModel(image:icGraphicDesign, title: txtGraphicDesign),
    CategoriesModel(image:icArtificialIntelligence, title: txtArtificialIntelligence),
    CategoriesModel(image: icFlutter, title: txtFlutter),
    CategoriesModel(image:icPython, title: txtPython),
    CategoriesModel(image:icJava, title: txtJava),
    CategoriesModel(image:icGraphicDesign, title: txtGraphicDesign),
    CategoriesModel(image:icArtificialIntelligence, title: txtArtificialIntelligence),
  ];
}


