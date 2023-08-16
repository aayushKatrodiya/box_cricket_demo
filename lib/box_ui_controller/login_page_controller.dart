import 'package:flutter/material.dart';

class LoginPageUiController {
  static TextEditingController nameTextController = TextEditingController();
  static TextEditingController emaiTextController = TextEditingController();
}

Widget loginPageUserEnteredData({
  required TextEditingController controller,
  required String hintTxt,
  IconData? prefixIcon,
  String? helpingText,
}) =>
    TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        // errorText: "Enter Name First",
        filled: false,
        // helperText: helpingText,
        prefixIcon: Icon(prefixIcon),
        fillColor: Colors.green,
        hintText: hintTxt,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
