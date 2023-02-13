import 'dart:async';

import 'package:eazylearn/course/words/word_quiz/word_quiz_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_colors.dart';

class word_quiz extends StatefulWidget {
  const word_quiz({Key? key}) : super(key: key);

  static const String routeName = '/word-quiz';

  @override
  State<word_quiz> createState() => _word_quizState();
}

class _word_quizState extends State<word_quiz> {
  String? leval;
  bool yes = false;
  String text1 = "yes";
  String text2 = "no";
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      body: SafeArea(
          child: SizedBox(
        height: size.height(context),
        width: size.width(context),
        child: Stack(
          children: [
            Positioned(
                // bottom: size.height(context) * 0.05,
                top: size.height(context) * 0.20,
                left: size.width(context) * 0.0,
                right: size.width(context) * 0.0,
                child: Image.asset('assets/imgpsh_f.gif')),
            Positioned(
                bottom: size.height(context) * 0.05,
                top: size.height(context) * 0.05,
                left: size.width(context) * 0.07,
                child: Image.asset('assets/fullsizeanim.png')),
            Positioned(
              bottom: size.height(context) * 0.267,
              left: (size.width(context) * 0.60 - size.width(context) / 2),
              child: Column(
                children: [
                  Text('Whooohoooo!',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFFDF577E),
                              fontSize: 20,
                              fontWeight: FontWeight.w700))),
                  Text('Now, you have completed all level',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFFDF577E),
                              fontSize: 20,
                              fontWeight: FontWeight.w700))),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Are you ready to give quiz?',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFFDF577E),
                              fontSize: 20,
                              fontWeight: FontWeight.w700))),
                ],
              ),
            ),
            Positioned(
                left: size.width(context) * 0.12,
                bottom: size.height(context) * 0.20,
                child: Row(
                  children: [
                    Radio(
                      value: text1,
                      groupValue: leval,
                      onChanged: (value) {
                        setState(() {
                          leval = value.toString();
                          Timer(
                              const Duration(seconds: 1),
                              () => Navigator.pushNamed(
                                  context, word_quiz_1.routeName));
                        });
                      },
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          yes = true;
                          leval = text1;
                          Timer(
                              const Duration(seconds: 1),
                              () => Navigator.pushNamed(
                                  context, word_quiz_1.routeName));
                        });
                      },
                      child: Text('Yes',
                          style: GoogleFonts.sourceSansPro(
                              textStyle: const TextStyle(
                                  color: Color(0xFFDF577E),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700))),
                    ),
                  ],
                )),
            Positioned(
                right: size.width(context) * 0.12,
                bottom: size.height(context) * 0.20,
                child: Row(
                  children: [
                    Radio(
                      value: text2,
                      groupValue: leval,
                      onChanged: (value) {
                        setState(() {
                          leval = value.toString();
                          setState(() {
                            leval = value.toString();
                            Timer(const Duration(seconds: 1),
                                () => Navigator.pop(context));
                          });
                        });
                      },
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Timer(const Duration(seconds: 1),
                              () => Navigator.pop(context));
                        });
                      },
                      child: Text('No',
                          style: GoogleFonts.sourceSansPro(
                              textStyle: const TextStyle(
                                  color: Color(0xFFDF577E),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700))),
                    ),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
