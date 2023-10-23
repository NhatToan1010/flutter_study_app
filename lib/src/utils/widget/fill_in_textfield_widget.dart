import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/utils/widget/model/fill_in_textfield_model.dart';

class FillInTextField extends StatelessWidget {
  const FillInTextField({
    super.key, required this.model,
  });

  final FillInTextFieldModel model;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: model.keyboardType,
      decoration: InputDecoration(
        prefixIcon: Icon(model.prefixIcon),
        suffixIcon: model.suffixIcon != null? Icon(model.suffixIcon) : null,
        label: Text(
          model.title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}