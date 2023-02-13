import 'dart:async';

import 'package:eazylearn/course/sentences/sentencesPageview_4/sentencesPageview_4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_colors.dart';

class sentencesProceed_3 extends StatefulWidget {
  const sentencesProceed_3({Key? key}) : super(key: key);

  static const String routeName = '/sentences-proceed-3';

  @override
  State<sentencesProceed_3> createState() => _sentencesProceed_3State();
}

class _sentencesProceed_3State extends State<sentencesProceed_3> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
        () => Navigator.pushNamed(context, sentencesPageview_4.routeName));
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
            //             Navigator.pushNamed(
            //                 context, sentencesPageview_4.routeName);
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
                  Text('Whooohoooo!',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFFDF577E),
                              fontSize: 20,
                              fontWeight: FontWeight.w700))),
                  Text('Now, you have completed the',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFFDF577E),
                              fontSize: 20,
                              fontWeight: FontWeight.w700))),
                  Text('3rd level now you can proceed',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFFDF577E),
                              fontSize: 20,
                              fontWeight: FontWeight.w700))),
                  Text('to the next level.',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFFDF577E),
                              fontSize: 20,
                              fontWeight: FontWeight.w700)))
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
