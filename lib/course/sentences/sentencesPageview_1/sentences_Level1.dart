import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/sentences/sentencesPageview_1/sentencesProceed.dart';
import 'package:flutter/material.dart';

import '../../../constant/constants.dart';

class sentencesLevel_1 extends StatefulWidget {
  const sentencesLevel_1({Key? key, required this.controller})
      : super(key: key);

  final PageController controller;

  @override
  State<sentencesLevel_1> createState() => _sentencesLevel_1State();
}

class _sentencesLevel_1State extends State<sentencesLevel_1> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/girl_sleeping.png',
            height: size.height(context) * .35,
            fit: BoxFit.contain,
          ),
          const Center(
            child: Text(
              'Kiara is sleeping.',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Color(0xFFDA932C),
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
                Navigator.pushNamed(context, sentencesProceed_1.routeName);
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
