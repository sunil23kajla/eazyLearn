import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/match/matchQuiz/matchQuiz.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchLevel_1 extends StatefulWidget {
  const MatchLevel_1({Key? key, required this.controller}) : super(key: key);

  final PageController controller;
  @override
  State<MatchLevel_1> createState() => _MatchLevel_1State();
}

class _MatchLevel_1State extends State<MatchLevel_1> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
        body: Column(
      children: [
        Center(
            child: Text('Match',
                style: GoogleFonts.lora(
                  textStyle: const TextStyle(
                      fontSize: 25,
                      color: Color(0xFF0C60AD),
                      fontWeight: FontWeight.w700),
                ))),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/BirthdayCake.png',
              height: size.height(context) * .050,
              fit: BoxFit.contain,
            ),
            Text('Elephant',
                style: GoogleFonts.sourceSansPro(
                  textStyle: const TextStyle(
                      fontSize: 25,
                      color: Color(0xFFE53B85),
                      fontWeight: FontWeight.w700),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/rose.png',
              height: size.height(context) * .050,
              fit: BoxFit.contain,
            ),
            Text('Cake',
                style: GoogleFonts.sourceSansPro(
                  textStyle: const TextStyle(
                      fontSize: 25,
                      color: Color(0xFF6D4F8D),
                      fontWeight: FontWeight.w700),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/boyjumpsuit.png',
              height: size.height(context) * .050,
              fit: BoxFit.contain,
            ),
            Text('Rose',
                style: GoogleFonts.sourceSansPro(
                  textStyle: const TextStyle(
                      fontSize: 25,
                      color: Color(0xFFCC2332),
                      fontWeight: FontWeight.w700),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/cow.png',
              height: size.height(context) * .050,
              fit: BoxFit.contain,
            ),
            Text('Boy',
                style: GoogleFonts.sourceSansPro(
                  textStyle: const TextStyle(
                      fontSize: 25,
                      color: Color(0xFFF68F00),
                      fontWeight: FontWeight.w700),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/elephant.png',
              height: size.height(context) * .050,
              fit: BoxFit.contain,
            ),
            Text('Cow',
                style: GoogleFonts.sourceSansPro(
                  textStyle: const TextStyle(
                      fontSize: 25,
                      color: Color(0xFF1CAD5E),
                      fontWeight: FontWeight.w700),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/BirthdayCake.png',
              height: size.height(context) * .050,
              fit: BoxFit.contain,
            ),
            Text('Banana',
                style: GoogleFonts.sourceSansPro(
                  textStyle: const TextStyle(
                      fontSize: 25,
                      color: Color(0xFF87891A),
                      fontWeight: FontWeight.w700),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () {
              Navigator.pushNamed(context, MatchQuiz.routeName);
            },
            child: Image.asset(
              'assets/Group66.png',
              height: size.height(context) * 0.06,
            ),
          ),
        )
      ],
    ));
  }
}
