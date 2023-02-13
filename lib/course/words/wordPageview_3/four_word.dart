import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/words/word_quiz/word_quiz.dart';
import 'package:flutter/material.dart';

import '../../../constant/constants.dart';

class four_word extends StatefulWidget {
  const four_word({Key? key, required this.controller}) : super(key: key);

  final PageController controller;

  static const String routeName = '/four-word';

  @override
  State<four_word> createState() => _four_wordState();
}

class _four_wordState extends State<four_word> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/birthday cake.png',
            height: size.height(context) * .34,
            fit: BoxFit.contain,
          ),
          const Center(
            child: Text(
              'CAKE',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w400,
                color: Color(0xFFFD6291),
                fontFamily: fontFamily,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                Navigator.pushNamed(context, word_quiz.routeName);
              },
              child: Image.asset(
                'assets/Group66.png',
                height: size.height(context) * 0.06,
              ),
            ),
          )
        ],
      ),
    );
  }
}
