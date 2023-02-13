import 'dart:async';

import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/letters/pageview_first/pageview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  static const String routeName = '/intro-success';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      Timer(const Duration(seconds: 5),
          () => Navigator.pushNamed(context, pageviewCapital.routeName));
    }
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
            Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/imgpsh_fullsize.gif',
                  fit: BoxFit.contain,
                )),
            Positioned(
              top: size.height(context) * .04,
              left: (size.width(context) * 0.55 - size.width(context) / 2),
              child: Image.asset(
                'assets/imgpsh_fullsize_anim1.png',
                fit: BoxFit.contain,
                height: size.height(context) * .60,
              ),
            ),
            Positioned(
              top: size.height(context) * 0.350,
              left: (size.width(context) * 0.63 - size.width(context) / 2),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text('HlooooooKidsssss!  ',
                        style: GoogleFonts.sourceSansPro(
                            textStyle: const TextStyle(
                                color: Color(0xFFDF577E),
                                fontSize: 20,
                                fontWeight: FontWeight.w700))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 35),
                    width: size.width(context) * .9,
                    child: Text(
                        'First, you have to complete the 1st level then you proceed to the next level.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sourceSansPro(
                            textStyle: const TextStyle(
                                color: Color(0xFFDF577E),
                                fontSize: 20,
                                fontWeight: FontWeight.w700))),
                  ),
                ],
              ),
            ),
            // Positioned(
            //   top: 0,
            //   right: 0,
            //   child: Padding(
            //     padding: const EdgeInsets.only(top: 8, right: 10),
            //     child: Align(
            //         alignment: Alignment.centerRight,
            //         child: InkWell(
            //           onTap: () {
            //             Navigator.popAndPushNamed(
            //                 context, pageviewCapital.routeName);
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
          ],
        ),
      )),
    );
  }
}
