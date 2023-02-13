import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_colors.dart';

class cursive_c extends StatefulWidget {
  const cursive_c({Key? key, required this.controller}) : super(key: key);

  final PageController controller;

  @override
  State<cursive_c> createState() => _cursive_cState();
}

class _cursive_cState extends State<cursive_c> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                child: Image.asset(
                  'assets/cc.png',
                  height: size.height(context) * .10,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/cat_birthday.png',
                height: size.height(context) * .20,
                fit: BoxFit.contain,
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            height: size.height(context) * .07,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF36C2E3),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                'c for cat',
                style: GoogleFonts.corinthia(
                  textStyle: const TextStyle(
                      fontSize: 25,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                widget.controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              child: Image.asset(
                'assets/Group66.png',
                height: size.height(context) * 0.06,
              ),
            ),
          )
        ],
      ),
    );
  }
}
