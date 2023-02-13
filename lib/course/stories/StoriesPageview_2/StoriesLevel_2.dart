import 'package:eazylearn/course/stories/StoriesQuiz/StoriesQuiz.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_colors.dart';

class StoriesLevel_2 extends StatefulWidget {
  const StoriesLevel_2({Key? key, required this.controller}) : super(key: key);

  final PageController controller;
  @override
  State<StoriesLevel_2> createState() => _StoriesLevel_2State();
}

class _StoriesLevel_2State extends State<StoriesLevel_2> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text('The Last Leaf',
                style: GoogleFonts.lora(
                  textStyle: const TextStyle(
                      color: Color(0xFFC63919),
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                )),
          ),
          Image.asset(
            'assets/girl in window.png',
            height: size.height(context) * .25,
          ),
          Container(
            height: size.height(context) * .3,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: SingleChildScrollView(
              child: Text(
                  'Suspendisse quis eu pellentesque ultrices tristique. Faucibus mi, pellentesque nec vulputate quam. Donec tortor pellentesque consequat nec. Ultrices turpis tellus viverra ut montes, ultricies. Venenatis sit pulvinar diam nam. Ut diam viverra arcu non tincidunt diam. Mauris tellus neque, eget malesuada nunc turpis molestie netus eget. Sed cursus tempus pharetra sociis felis, leo massa faucibus. Nulla est nisl eget tristique gravida. Nisl elementum, cursus justo ut viverra neque quis molestie. Nunc egestas accumsan, sed enim lacus tellus massa id. Massa est lacus pellentesque semper. Leo odio nunc integer mauris. Scelerisque volutpat velit elit eget posuere montes, ipsum. Diam aliquam semper vitae in.tellus massa id. Massa est lacus pellentesque semper. Leo odio .',
                  style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  )),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, StoriesQuiz.routeName);
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
