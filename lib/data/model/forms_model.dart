import 'package:flutter/cupertino.dart';

class FormsModel {
  final String hintText;
  final TextEditingController controller;
  final FormsModel? form;

  FormsModel(this.hintText, this.controller, {this.form});

  static iterateJson(List<FormsModel> form) {
    final Map<String, dynamic> data = <String, dynamic>{};

    for (var value in (form)) {
      if (value.form != null) {
        data[value.form!.controller.text.replaceAll(" ", "_").toLowerCase()] =
            value.controller.text;
      }
      else {
        data[value.hintText.replaceAll(" ", "_").toLowerCase()] =
            value.controller.text;
      }
    }
    return data;
  }
}
