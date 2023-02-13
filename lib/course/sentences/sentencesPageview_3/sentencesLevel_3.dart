import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/sentences/sentencesPageview_3/sentencesProceed_3.dart';
import 'package:flutter/material.dart';

import '../../../constant/constants.dart';

class sentencesLevel_3 extends StatefulWidget {
  const sentencesLevel_3({Key? key, required this.controller})
      : super(key: key);

  final PageController controller;

  @override
  State<sentencesLevel_3> createState() => _sentencesLevel_3State();
}

class _sentencesLevel_3State extends State<sentencesLevel_3> {
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
            'assets/couple_standing.png',
            height: size.height(context) * .35,
            fit: BoxFit.contain,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: const Text(
              'Lusi and John are  best friends.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Color(0xFF181717),
                fontFamily: fontFamily,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                Navigator.pushNamed(context, sentencesProceed_3.routeName);
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
