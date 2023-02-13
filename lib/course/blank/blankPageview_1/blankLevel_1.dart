import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/blank/blankPageview_1/blankPeoceed_1.dart';
import 'package:flutter/material.dart';

import '../../../constant/constants.dart';

class blankLevel_1 extends StatefulWidget {
  const blankLevel_1({Key? key, required this.controller}) : super(key: key);

  final PageController controller;

  @override
  State<blankLevel_1> createState() => _blankLevel_1State();
}

class _blankLevel_1State extends State<blankLevel_1> {
  String? leval;
  bool Reading = false;
  bool Watching = false;
  String text1 = "Reading";
  String text2 = "Watching";
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
            'assets/young_woman.png',
            height: size.height(context) * .32,
            fit: BoxFit.contain,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: const Text(
              'Frankie is_____a book.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Color(0xFF922A4D),
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
                    Reading = true;
                    leval = text1;
                  });
                },
                child: const Text(
                  'Reading',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF922A4D),
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
                    Watching = true;
                    leval = text2;
                  });
                },
                child: const Text(
                  'Watching',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF922A4D),
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
                Navigator.pushNamed(context, blankProceed_1.routeName);
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
