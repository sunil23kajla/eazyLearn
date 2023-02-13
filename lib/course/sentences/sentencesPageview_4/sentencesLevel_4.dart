import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/sentences/sentencesQuiz/sentencesQuiz.dart';
import 'package:flutter/material.dart';

import '../../../constant/constants.dart';

class sentencesLevel_4 extends StatefulWidget {
  const sentencesLevel_4({Key? key, required this.controller})
      : super(key: key);

  final PageController controller;

  @override
  State<sentencesLevel_4> createState() => _sentencesLevel_4State();
}

class _sentencesLevel_4State extends State<sentencesLevel_4> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/Trip_together.png',
            height: size.height(context) * .35,
            fit: BoxFit.contain,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: const Text(
              'Sita and Geeta are going on a trip together.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Color(0xFFF04E23),
                fontFamily: fontFamily,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                Navigator.pushNamed(context, sentencesQuiz.routeName);
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
