import 'package:flutter/material.dart';

class OnboardingModel {
  final String background;
  final String image;
  final String title;
  final String body;
  final String counter;

  OnboardingModel(
      {required this.background,
      required this.image,
      required this.title,
      required this.body,
      required this.counter});
}
