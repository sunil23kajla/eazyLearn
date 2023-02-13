import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/words/wordPageview_2/word_proceed_2.dart';
import 'package:flutter/material.dart';

import '../../../constant/constants.dart';

class three_word extends StatefulWidget {
  const three_word({Key? key, required this.controller}) : super(key: key);

  final PageController controller;

  static const String routeName = '/three-word';

  @override
  State<three_word> createState() => _three_wordState();
}

class _three_wordState extends State<three_word> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 0,
          ),
          Image.asset(
            'assets/dogsitting.png',
            height: size.height(context) * .30,
            fit: BoxFit.contain,
          ),
          const Center(
            child: Text(
              'DOG',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6E4F42),
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
                Navigator.pushNamed(context, word_proceed_2.routeName);
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
