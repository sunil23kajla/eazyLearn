import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/constant/constants.dart';
import 'package:eazylearn/course/Fruits/animalsName/AnimalsName.dart';
import 'package:eazylearn/course/Fruits/fruitsQuiz/FruitsQuiz.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimalsPage extends StatefulWidget {
  const AnimalsPage({Key? key}) : super(key: key);

  static const String routeName = '/animals-page';

  @override
  State<AnimalsPage> createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: size.height(context) * .28,
            width: size.width(context),
            child: Stack(
              children: [
                Image.asset(
                  "assets/Group118.png",
                  fit: BoxFit.cover,
                  width: size.width(context),
                  height: size.height(context) * 1,
                ),
                Image.asset(
                  "assets/Group68.png",
                ),
                Positioned(
                  top: size.height(context) * .11,
                  left: size.width(context) * .4,
                  child: Text(
                    'Level-2',
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFFFFF))),
                  ),
                ),
                Positioned(
                  top: size.height(context) * .15,
                  left: size.width(context) * .09,
                  child: Image.asset(
                    'assets/Group--91.png',
                    width: size.width(context) * .85,
                  ),
                ),
                Positioned(
                  top: size.height(context) * .22,
                  left: size.width(context) * .38,
                  child: Text(
                    'Animals',
                    style: GoogleFonts.lora(
                        textStyle: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF000000))),
                  ),
                ),
                Positioned(
                    left: size.width(context) * .075,
                    top: size.height(context) * .04,
                    child: InkWell(
                      onTap: (() {
                        Navigator.pop(context);
                      }),
                      child: Image.asset(
                        'assets/Group.png',
                        height: size.height(context) * .04,
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: size.height(context) * .667,
            width: size.width(context),
            child: Stack(
              children: [
                Image.asset(
                  "assets/Group118.png",
                  fit: BoxFit.cover,
                  width: size.width(context),
                  height: size.height(context) * 1,
                ),
                ListView.builder(
                  itemCount: animalsData.length,
                  itemBuilder: (context, index) {
                    var animal = animalsData[index];
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AnimalsName.routeName,
                            arguments: index);
                      },
                      child: animalsWidget(
                        size,
                        context,
                        animal[0],
                        fruitDesc,
                        animal[2],
                        animal[1],
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      )),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.pushNamed(context, FruitsQuiz.routeName);
        },
        child: Container(
          margin: EdgeInsets.only(
              bottom: size.height(context) * .046,
              right: size.width(context) * .003),
          child: Image.asset(
            'assets/Group66.png',
            height: size.height(context) * .06,
          ),
        ),
      ),
    );
  }

  Widget animalsWidget(
      Sizess size, BuildContext context, title, texts, color, image) {
    return Padding(
      padding: EdgeInsets.only(bottom: size.height(context) * 0.05),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(6)),
            height: size.height(context) * .15,
            width: size.width(context) * .7,
            margin: EdgeInsets.only(right: size.width(context) * 0.05),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 5, left: 40, right: 5),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
                      fontFamily: fontFamily,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 40, right: 5),
                  child: Text(
                    texts,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
                      fontFamily: fontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              left: size.width(context) * .09,
              top: size.height(context) * 0.01,
              child: Image.asset(
                image,
                height: size.height(context) * .12,
              )),
        ],
      ),
    );
  }
}
