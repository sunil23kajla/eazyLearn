import 'dart:async';

import 'package:eazylearn/course/letters/pageview_third/pageview_third.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_colors.dart';

class Proceed_2 extends StatefulWidget {
  const Proceed_2({Key? key}) : super(key: key);

  static const String routeName = '/proceed-2';

  @override
  State<Proceed_2> createState() => _Proceed_2State();
}

class _Proceed_2State extends State<Proceed_2> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
        () => Navigator.pushNamed(context, pageview_third.routeName));
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
            //             Navigator.pushNamed(context, pageview_third.routeName);
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
                    padding: EdgeInsets.only(right: size.width(context) * .21),
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
                        'Now, you have completed the 2st level now you can proceed to the next level.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sourceSansPro(
                            textStyle: const TextStyle(
                                color: Color(0xFFDF577E),
                                fontSize: 20,
                                fontWeight: FontWeight.w700))),
                  ),
                  // Text('2st level now you can proceed',
                  //     style: GoogleFonts.sourceSansPro(
                  //         textStyle: const TextStyle(
                  //             color: Color(0xFFDF577E),
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.w700))),
                  // Text('to the next level.',
                  //     style: GoogleFonts.sourceSansPro(
                  //         textStyle: const TextStyle(
                  //             color: Color(0xFFDF577E),
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.w700)))
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
