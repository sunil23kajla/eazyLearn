import 'package:eazylearn/constant/app_colors.dart';
import 'package:flutter/material.dart';

Widget TextFieldWidget(value, title, texttype) {
  var size = Sizess();
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
    child: SizedBox(
      height: 45,
      child: TextField(
          controller: value,
          keyboardType: texttype,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 7.0, horizontal: 15),
            hintText: title,
            hintStyle: const TextStyle(
                color: Color(0xFFA1A1A1),
                fontSize: 15,
                fontWeight: FontWeight.w400),
            filled: true,
            fillColor: const Color(0xFFFFFFFF),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Color(0xFFFFFFFF),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Color(0xFFFFFFFF)),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
          )),
    ),
  );
}
