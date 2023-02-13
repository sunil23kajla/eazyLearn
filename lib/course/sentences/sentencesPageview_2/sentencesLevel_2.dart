import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/sentences/sentencesPageview_2/sentencesProceed_2.dart';
import 'package:flutter/material.dart';

import '../../../constant/constants.dart';

class sentencesLevel_2 extends StatefulWidget {
  const sentencesLevel_2({Key? key, required this.controller})
      : super(key: key);

  final PageController controller;

  @override
  State<sentencesLevel_2> createState() => _sentencesLevel_2State();
}

class _sentencesLevel_2State extends State<sentencesLevel_2> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/Woman_draws.png',
            height: size.height(context) * .37,
            fit: BoxFit.contain,
          ),
          const Center(
            child: Text(
              'Rosie like to paint.',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Color(0xFF7248EE),
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
                Navigator.pushNamed(context, sentencesProceed_2.routeName);
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
