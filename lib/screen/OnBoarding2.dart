import 'package:eazylearn/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding2Screen extends StatefulWidget {
  const OnBoarding2Screen({Key? key, required this.controller})
      : super(key: key);

  final PageController controller;

  @override
  State<OnBoarding2Screen> createState() => _OnBoarding2ScreenState();
}

class _OnBoarding2ScreenState extends State<OnBoarding2Screen> {
  String? leval;
  late Color color;
  bool first = false;
  bool second = false;
  bool third = false;

  String text1 = "Up to nursery";
  String text2 = "L.K.G";
  String text3 = "L.K.G & U.K.G above";

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
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Image.asset(
                  'assets/Learning.png',
                  fit: BoxFit.fill,
                  height: 60,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: size.width(context) * .1),
                child: Text(
                  'What’s your child learning level',
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
                    left: size.width(context) * .07,
                    right: size.width(context) * .07),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'It helps us personalize your child’ course',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            color: Color(0xFF919191),
                            fontSize: 10,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              SizedBox(
                height: size.height(context) * .14,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            first = true;
                            second = false;
                            third = false;
                            leval = text1;
                          });
                        },
                        child: radioText(
                          size,
                          context,
                          text1,
                          text1,
                          first
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
                            second = true;
                            third = false;
                            leval = text2;
                          });
                        },
                        child: radioText(
                          size,
                          context,
                          text2,
                          text2,
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
                            leval = text3;
                          });
                        },
                        child: radioText(
                          size,
                          context,
                          text3,
                          text3,
                          third
                              ? const Color(0xFFDDF4FF)
                              : const Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
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
                  child: Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              )
            ],
          ),
        )));
  }

  Widget radioText(
      Sizess size, BuildContext context, String text, title, Color colorss) {
    return Container(
      height: size.height(context) * 0.04,
      width: size.width(context) * 0.47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(width: 2, color: const Color(0xFFA1DAF4)),
        color: colorss,
      ),
      child: Row(
        children: [
          Radio(
            value: text,
            groupValue: leval,
            onChanged: (value) {
              setState(() {
                leval = value.toString();
                if (value.toString() == text1) {
                  first = true;
                  second = false;
                  third = false;
                } else if (value.toString() == text2) {
                  first = false;
                  second = true;
                  third = false;
                } else {
                  first = false;
                  second = false;
                  third = true;
                }
              });
            },
          ),
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
