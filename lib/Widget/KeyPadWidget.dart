import 'package:flutter/material.dart';

Widget KeyPad(text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 50,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: const Color(0xFFF1EDED)),
            color: const Color(0xFFFEFEFD),
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                offset: Offset(4, 4),
                color: Color.fromRGBO(0, 0, 0, 0.10),
                blurRadius: 1.0,
              ),
            ]),
        child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF828B88),
              fontSize: 20),
        ),
      )
    ],
  );
}
