import 'package:eazylearn/Widget/KeyPadWidget.dart';
import 'package:eazylearn/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding1_Screen extends StatefulWidget {
  const OnBoarding1_Screen({Key? key, required this.controller})
      : super(key: key);

  final PageController controller;
  @override
  State<OnBoarding1_Screen> createState() => _OnBoarding1_ScreenState();
}

class _OnBoarding1_ScreenState extends State<OnBoarding1_Screen> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin:
              const EdgeInsets.only(top: 22, left: 10, right: 10, bottom: 22),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(1),
            border: Border.all(width: 1, color: const Color(0xFFA1A1A1)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/BirthdayCake.png',
                  fit: BoxFit.fill,
                  height: 60,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width(context) * .15,
                    right: size.width(context) * .15),
                child: Text(
                  'How old is your child?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lora(
                      textStyle: const TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height(context) * .01,
                  bottom: size.height(context) * .01,
                  left: size.width(context) * .05,
                  right: size.width(context) * .05,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Age helps us personalize your child’ course',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            color: Color(0xFF919191),
                            fontSize: 10,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  KeyPad('2'),
                  KeyPad('3'),
                  KeyPad('4'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    KeyPad('5'),
                    KeyPad('6'),
                    KeyPad('7+'),
                  ],
                ),
              ),
              const SizedBox(height: 13),
              InkWell(
                onTap: () async {
                  await widget.controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  height: size.height(context) * 0.05,
                  width: size.width(context) * 0.55,
                  alignment: Alignment.center,
                  // margin:
                  //     const EdgeInsets.symmetric(horizontal: 4, vertical: 13),
                  decoration: BoxDecoration(
                    color: const Color(0xFF407BFF),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    'Next',
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.w700)),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
