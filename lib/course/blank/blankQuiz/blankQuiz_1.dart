import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/blank/blankQuiz/blankQuiz_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class blankQuiz_1 extends StatefulWidget {
  const blankQuiz_1({Key? key}) : super(key: key);

  static const String routeName = '/blank-quiz-1';

  @override
  State<blankQuiz_1> createState() => _blankQuiz_1State();
}

class _blankQuiz_1State extends State<blankQuiz_1> {
  String? leval;
  late Color color;
  bool first = false;
  bool second = false;
  bool third = false;
  bool four = false;
  bool five = false;

  String text1 = "45";
  String text2 = "32";
  String text3 = "26";
  String text4 = "12";
  String text5 = "None of these";

  @override
  void initState() {
    color = Colors.blue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9DC6FE),
      body: SafeArea(
        child: SizedBox(
          height: size.height(context),
          width: size.width(context),
          child: Stack(
            children: [
              Positioned(
                top: size.height(context) * 0.02,
                child: Image.asset(
                  'assets/Vector3.png',
                  height: size.height(context) * 0.10,
                ),
              ),
              Positioned(
                top: size.height(context) * 0.05,
                left: size.width(context) * 0.03,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/Multiply.png',
                    height: size.height(context) * 0.03,
                  ),
                ),
              ),
              Positioned(
                bottom: size.height(context) * 0.08,
                left: (size.width(context) * 0.68) - size.width(context) / 2,
                child: Container(
                  height: size.height(context) * 0.50,
                  width: size.width(context) * 0.65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0x30FFFFFF),
                  ),
                ),
              ),
              Positioned(
                bottom: size.height(context) * 0.10,
                left: (size.width(context) * 0.63) - size.width(context) / 2,
                child: Container(
                  height: size.height(context) * 0.50,
                  width: size.width(context) * 0.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0x64FFFFFF),
                  ),
                ),
              ),
              Positioned(
                bottom: size.height(context) * 0.12,
                left: (size.width(context) * 0.59) - size.width(context) / 2,
                child: Container(
                    height: size.height(context) * 0.60,
                    width: size.width(context) * 0.82,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFFFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Learning Toy.png',
                            height: 60,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                              'How many letters are there in the\nEnglish alphabet?',
                              style: GoogleFonts.sourceSansPro(
                                textStyle: const TextStyle(
                                    fontSize: 17,
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.w600),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                first = true;
                                second = false;
                                third = false;
                                four = false;
                                five = false;
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
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                first = false;
                                second = true;
                                third = false;
                                four = false;
                                five = false;
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
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                first = false;
                                second = false;
                                third = true;
                                four = false;
                                five = false;
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
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                first = false;
                                second = false;
                                third = false;
                                four = true;
                                five = false;
                                leval = text4;
                              });
                            },
                            child: radioText(
                              size,
                              context,
                              text4,
                              text4,
                              four
                                  ? const Color(0xFFDDF4FF)
                                  : const Color(0xFFFFFFFF),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                first = false;
                                second = false;
                                third = false;
                                four = false;
                                five = true;
                                leval = text5;
                              });
                            },
                            child: radioText(
                              size,
                              context,
                              text5,
                              text5,
                              five
                                  ? const Color(0xFFDDF4FF)
                                  : const Color(0xFFFFFFFF),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, blankQuiz_2.routeName);
                              },
                              child: Image.asset(
                                'assets/Group66.png',
                                height: size.height(context) * 0.06,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
              Positioned(
                  top: size.height(context) * 0.16,
                  left: (size.width(context) * 0.60 - size.width(context) / 2),
                  child: Text('Question 4/10',
                      style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ))),
              Positioned(
                top: size.height(context) * 0.20,
                left: (size.width(context) * 0.60 - size.width(context) / 2),
                child: Image.asset(
                  'assets/Group89.png',
                  // height: size.height(context) * 0.10,
                  width: size.width(context) * 0.80,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget radioText(
      Sizess size, BuildContext context, String text, title, Color colorss) {
    return Container(
      height: size.height(context) * 0.04,
      // width: size.width(context) * 0.47,
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
                  four = false;
                  five = false;
                } else if (value.toString() == text2) {
                  first = false;
                  second = true;
                  third = false;
                  four = false;
                  five = false;
                } else if (value.toString() == text3) {
                  first = false;
                  second = false;
                  third = true;
                  four = false;
                  five = false;
                } else if (value.toString() == text4) {
                  first = false;
                  second = false;
                  third = false;
                  four = true;
                  five = false;
                } else {
                  first = false;
                  second = false;
                  third = false;
                  four = false;
                  five = true;
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
                    fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
}
