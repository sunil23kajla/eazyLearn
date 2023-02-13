import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/blank/blankQuiz/blankQuiz.dart';
import 'package:flutter/material.dart';

import '../../../constant/constants.dart';

class blankLevel_2 extends StatefulWidget {
  const blankLevel_2({Key? key, required this.controller}) : super(key: key);

  final PageController controller;

  @override
  State<blankLevel_2> createState() => _blankLevel_2State();
}

class _blankLevel_2State extends State<blankLevel_2> {
  String? leval;
  bool dogs = false;
  bool cats = false;
  String text1 = "Dogs";
  String text2 = "Cats";
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
            'assets/Girl-attention.png',
            height: size.height(context) * .35,
            fit: BoxFit.contain,
          ),
          Container(
            child: const Text(
              'Dazy loves _____.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Color(0xFF784E81),
                fontFamily: fontFamily,
              ),
            ),
          ),
          Row(
            children: [
              Radio(
                value: text1,
                groupValue: leval,
                onChanged: (value) {
                  setState(() {
                    leval = value.toString();
                  });
                },
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    dogs = true;
                    leval = text1;
                  });
                },
                child: const Text(
                  'Dogs',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF784E81),
                    fontFamily: fontFamily,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: text2,
                groupValue: leval,
                onChanged: (value) {
                  setState(() {
                    leval = value.toString();
                  });
                },
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    cats = true;
                    leval = text2;
                  });
                },
                child: const Text(
                  'Cats',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF784E81),
                    fontFamily: fontFamily,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                Navigator.pushNamed(context, blankQuiz.routeName);
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
