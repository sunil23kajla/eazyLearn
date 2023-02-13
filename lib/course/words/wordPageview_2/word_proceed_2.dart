import 'dart:async';

import 'package:eazylearn/course/words/wordPageview_3/wordpageview_3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_colors.dart';

class word_proceed_2 extends StatefulWidget {
  const word_proceed_2({Key? key}) : super(key: key);

  static const String routeName = '/word-proceed-2';

  @override
  State<word_proceed_2> createState() => _word_proceed_2State();
}

class _word_proceed_2State extends State<word_proceed_2> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
        () => Navigator.pushNamed(context, wordPageview_3.routeName));
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
            //             Navigator.pushNamed(context, wordPageview_3.routeName);
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
              left: (size.width(context) * 0.55 - size.width(context) / 2),
              child: Image.asset(
                'assets/imgpsh_fullsize_anim1.png',
                fit: BoxFit.contain,
                height: size.height(context) * .60,
              ),
            ),
            Positioned(
              top: size.height(context) * 0.312,
              left: (size.width(context) * 0.65 - size.width(context) / 2),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: size.width(context) * .27),
                    child: Text('Whooohoooo!',
                        style: GoogleFonts.sourceSansPro(
                            textStyle: const TextStyle(
                                color: Color(0xFFDF577E),
                                fontSize: 20,
                                fontWeight: FontWeight.w700))),
                  ),
                  Container(
                    width: size.width(context) * 1,
                    padding: EdgeInsets.only(right: size.width(context) * .27),
                    child: Text(
                        'Now, you have completed the 2nd level now you can proceed to the next level.',
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
            Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/imgpsh_fullsize.png',
                  fit: BoxFit.contain,
                )),
            Positioned(
                bottom: size.height(context) * 0.05,
                child: Image.asset(
                  'assets/imgpsh_anim (1).gif',
                  // fit: BoxFit.contain,
                )),
          ],
        ),
      )),
    );
  }
}