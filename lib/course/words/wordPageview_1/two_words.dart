import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/constant/constants.dart';
import 'package:eazylearn/course/words/wordPageview_1/word_Proceed_1.dart';
import 'package:flutter/material.dart';

class two_word extends StatefulWidget {
  const two_word({Key? key, required this.controller}) : super(key: key);

  final PageController controller;

  @override
  State<two_word> createState() => _two_wordState();
}

class _two_wordState extends State<two_word> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Image.asset(
              'assets/Travelling.png',
              height: size.height(context) * .30,
              fit: BoxFit.contain,
            ),
          ),
          const Center(
            child: Text(
              'GO',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w400,
                color: Color(0xFF5D4983),
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
                Navigator.pushNamed(context, wordProceed_1.routeName);
              },
              child: Image.asset(
                'assets/Group66.png',
                height: size.height(context) * 0.05,
              ),
            ),
          )
        ],
      ),
    );
  }
}
