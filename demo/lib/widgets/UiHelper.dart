import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField(
      TextEditingController controller, String text, IconData iconData) {
    return SizedBox(
      width: 350,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: text,
            suffixIcon: Icon(iconData),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
      ),
    );
  }
}
