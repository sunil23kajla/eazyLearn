import 'package:eazylearn/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding3_Screen extends StatefulWidget {
  const OnBoarding3_Screen({Key? key, required this.controller})
      : super(key: key);
  final PageController controller;
  @override
  State<OnBoarding3_Screen> createState() => _OnBoarding3_ScreenState();
}

class _OnBoarding3_ScreenState extends State<OnBoarding3_Screen> {
  String? language;
  late Color color;
  bool first = false;
  bool second = false;
  bool third = false;
  bool forth = false;

  String hindi = 'Hindi';
  String english = 'English';
  String telugu = 'Telugu';
  String tamil = 'Tamil';

  @override
  void initState() {
    color = Colors.blue;
    super.initState();
  }

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
              InkWell(
                onTap: () {
                  widget.controller.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 7, left: 9),
                  child: Image.asset(
                    'assets/Vector.png',
                    height: 13,
                    color: const Color(0xFF2196F3),
                  ),
                ),
              ),
              Image.asset(
                'assets/Translation.png',
                fit: BoxFit.fill,
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.height(context) * .06,
                    right: size.height(context) * .06),
                child: Text(
                  'What’s your child language?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lora(
                      textStyle: const TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              // Text(
              //   'child language?',
              //   style: GoogleFonts.lora(
              //       textStyle: const TextStyle(
              //           color: Color(0xFF000000),
              //           fontSize: 16,
              //           fontWeight: FontWeight.w700)),
              // ),
              const SizedBox(
                height: 7,
              ),
              SizedBox(
                height: size.height(context) * .19,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              first = true;
                              second = false;
                              third = false;
                              forth = false;
                              language = hindi;
                            });
                          },
                          child: radioWidget(
                            size,
                            context,
                            hindi,
                            hindi,
                            first
                                ? const Color(0xFFDDF4FF)
                                : const Color(0xFFFFFFFF),
                          )),
                      const SizedBox(
                        height: 7,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            first = false;
                            second = true;
                            third = false;
                            forth = false;
                            language = english;
                          });
                        },
                        child: radioWidget(
                          size,
                          context,
                          english,
                          english,
                          second
                              ? const Color(0xFFDDF4FF)
                              : const Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            first = false;
                            second = false;
                            third = true;
                            forth = false;
                            language = telugu;
                          });
                        },
                        child: radioWidget(
                          size,
                          context,
                          telugu,
                          telugu,
                          third
                              ? const Color(0xFFDDF4FF)
                              : const Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            first = false;
                            second = false;
                            third = false;
                            forth = true;
                            language = tamil;
                          });
                        },
                        child: radioWidget(
                          size,
                          context,
                          tamil,
                          tamil,
                          forth
                              ? const Color(0xFFDDF4FF)
                              : const Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 7),
              InkWell(
                onTap: () async {
                  await widget.controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  height: size.height(context) * 0.05,
                  width: size.width(context) * 0.50,
                  alignment: Alignment.center,
                  // margin:
                  //     const EdgeInsets.symmetric(horizontal: 4, vertical: 13),
                  decoration: BoxDecoration(
                    color: const Color(0xFF407BFF),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        )));
  }

  Container radioWidget(Sizess size, BuildContext context, String languages,
      title, Color colors) {
    return Container(
      height: size.height(context) * 0.04,
      width: size.width(context) * 0.47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(width: 2, color: const Color(0xFFA1DAF4)),
        color: colors,
      ),
      child: Row(
        children: [
          Radio(
              value: languages,
              groupValue: language,
              onChanged: (value) {
                setState(() {
                  language = value.toString();
                  if (value.toString() == hindi) {
                    first = true;
                    second = false;
                    third = false;
                    forth = false;
                  } else if (value.toString() == english) {
                    first = false;
                    second = true;
                    third = false;
                    forth = false;
                  } else if (value.toString() == telugu) {
                    first = false;
                    second = false;
                    third = true;
                    forth = false;
                  } else {
                    first = false;
                    second = false;
                    third = false;
                    forth = true;
                  }
                });
              }),
          Text(
            title,
            style: GoogleFonts.sourceSansPro(
                textStyle: const TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}
