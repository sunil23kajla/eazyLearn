import 'package:eazylearn/course/Fruits/FruitsIntro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_colors.dart';

class StoriesDownload extends StatefulWidget {
  const StoriesDownload({Key? key}) : super(key: key);

  static const String routeName = '/stories-download';

  @override
  State<StoriesDownload> createState() => _StoriesDownloadState();
}

class _StoriesDownloadState extends State<StoriesDownload> {
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
                    bottom: size.height(context) * 0.05,
                    top: size.height(context) * 0.05,
                    left: size.width(context) * 0.07,
                    child: Image.asset('assets/fullsizeanim.png')),
                Positioned(
                    top: 50,
                    left: 90,
                    child: Text('Your Certificate',
                        style: GoogleFonts.lora(
                            textStyle: const TextStyle(
                                color: Color(0xFFDF577E),
                                fontSize: 25,
                                fontWeight: FontWeight.w700)))),
                Positioned(
                    // bottom: size.height(context) * 0.05,
                    top: size.height(context) * 0.29,
                    left: size.width(context) * 0.085,
                    child: Image.asset(
                      'assets/Modern-Award-Certificate.png',
                      height: size.height(context) * .27,
                    )),
                Positioned(
                    left: size.width(context) * .075,
                    top: size.height(context) * .04,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/Group.png',
                        height: size.height(context) * .04,
                      ),
                    )),
                Positioned(
                  bottom: size.height(context) * 0.25,
                  left: size.width(context) * 0.07,
                  child: Container(
                    height: size.height(context) * 0.05,
                    width: size.width(context) * .85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFE07F50),
                    ),
                    child: InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, FruitsIntro.routeName);
                        },
                        child: Center(
                            child: Text('Download',
                                style: GoogleFonts.sourceSansPro(
                                    textStyle: const TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700))))),
                  ),
                ),
                Positioned(
                  bottom: size.height(context) * 0.13,
                  right: size.width(context) * 0.07,
                  child: Container(
                    height: size.height(context) * 0.045,
                    width: size.width(context) * 0.29,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFDF577E),
                    ),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, FruitsIntro.routeName);
                        },
                        child: Center(
                            child: Text('Next',
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
