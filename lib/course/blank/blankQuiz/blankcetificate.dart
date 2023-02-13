import 'package:eazylearn/course/blank/blankQuiz/blankDownload.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_colors.dart';

class blankcetificate extends StatefulWidget {
  const blankcetificate({Key? key}) : super(key: key);

  static const String routeName = '/blank-cartificate';

  @override
  State<blankcetificate> createState() => _blankcetificateState();
}

class _blankcetificateState extends State<blankcetificate> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
        backgroundColor: const Color(0xFF9dc6fe),
        body: SafeArea(
          child: SizedBox(
              height: size.height(context),
              width: size.width(context),
              child: Stack(children: [
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
                  bottom: size.height(context) * 0.277,
                  left: (size.width(context) * 0.60 - size.width(context) / 2),
                  child: Column(
                    children: [
                      Text('Whooohoooo! hello',
                          style: GoogleFonts.sourceSansPro(
                              textStyle: const TextStyle(
                                  color: Color(0xFFDF577E),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700))),
                      Text('you have successfully completed',
                          style: GoogleFonts.sourceSansPro(
                              textStyle: const TextStyle(
                                  color: Color(0xFFDF577E),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700))),
                      Text('the quiz.',
                          style: GoogleFonts.sourceSansPro(
                              textStyle: const TextStyle(
                                  color: Color(0xFFDF577E),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700))),
                    ],
                  ),
                ),
                Positioned(
                  bottom: size.height(context) * 0.15,
                  left: size.width(context) * 0.20,
                  child: Container(
                    height: size.height(context) * 0.05,
                    width: size.width(context) * 0.60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFDF577E),
                    ),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Blankdownload.routeName);
                        },
                        child: Center(
                            child: Text('Download your certificate',
                                style: GoogleFonts.sourceSansPro(
                                    textStyle: const TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700))))),
                  ),
                )
              ])),
        ));
  }
}
