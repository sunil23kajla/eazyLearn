import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_colors.dart';

class capital_b extends StatefulWidget {
  const capital_b({Key? key, required this.controller}) : super(key: key);

  final PageController controller;
  @override
  State<capital_b> createState() => _capital_bState();
}

class _capital_bState extends State<capital_b> {
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
                margin: const EdgeInsets.only(top: 20, left: 10),
                child: Image.asset(
                  'assets/b.png',
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
                'assets/tennis_ball.png',
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
              color: const Color(0xFF6D4F8D),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                'b for ball',
                style: GoogleFonts.sourceSansPro(
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
