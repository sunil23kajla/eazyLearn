import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/app_colors.dart';
import 'matchPageview_1/matchPageview_1.dart';

class MatchIntro extends StatefulWidget {
  const MatchIntro({Key? key}) : super(key: key);

  static const String routeName = '/match-intro';

  @override
  State<MatchIntro> createState() => _MatchIntroState();
}

class _MatchIntroState extends State<MatchIntro> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
        () => Navigator.pushNamed(context, MatchPageview_1.routeName));
  }

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
            // Positioned(
            //   top: 0,
            //   right: 0,
            //   child: Padding(
            //     padding: const EdgeInsets.only(top: 8, right: 10),
            //     child: Align(
            //         alignment: Alignment.centerRight,
            //         child: InkWell(
            //           onTap: () {
            //             Navigator.pushNamed(context, MatchPageview_1.routeName);
            //           },
            //           child: Text('Next',
            //               style: GoogleFonts.sourceSansPro(
            //                   textStyle: const TextStyle(
            //                       color: Color(0xFFDF577E),
            //                       fontSize: 15,
            //                       fontWeight: FontWeight.w600))),
            //         )),
            //   ),
            // ),
            Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/imgpsh_fullsize.gif',
                  fit: BoxFit.contain,
                )),
            Positioned(
              top: size.height(context) * .03,
              left: (size.width(context) * 0.55 - size.width(context) / 2),
              child: Image.asset(
                'assets/imgpsh_fullsize_anim1.png',
                fit: BoxFit.contain,
                height: size.height(context) * .60,
              ),
            ),
            Positioned(
              top: size.height(context) * 0.350,
              left: (size.width(context) * 0.61 - size.width(context) / 2),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text('HlooooooKidsssss!',
                        style: GoogleFonts.sourceSansPro(
                            textStyle: const TextStyle(
                                color: Color(0xFFDF577E),
                                fontSize: 20,
                                fontWeight: FontWeight.w700))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 30),
                    width: size.width(context) * .9,
                    child: Text(
                        'First, you have to complete the 1st level of Match and then you can proceed to next level ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sourceSansPro(
                            textStyle: const TextStyle(
                                color: Color(0xFFDF577E),
                                fontSize: 20,
                                fontWeight: FontWeight.w700))),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
