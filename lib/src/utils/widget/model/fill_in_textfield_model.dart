import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FillInTextFieldModel {
  IconData prefixIcon;
  IconData? suffixIcon;
  String title;
  TextInputType? keyboardType = TextInputType.text;

  FillInTextFieldModel(
      {required this.prefixIcon,
      this.suffixIcon,
      required this.title,
      this.keyboardType});
}
