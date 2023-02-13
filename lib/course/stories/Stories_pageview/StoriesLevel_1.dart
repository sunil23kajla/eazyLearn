import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/stories/Stories_pageview/StoriesProceed_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoriesLevel_1 extends StatefulWidget {
  const StoriesLevel_1({Key? key, required this.controller}) : super(key: key);
  final PageController controller;
  @override
  State<StoriesLevel_1> createState() => _StoriesLevel_1State();
}

class _StoriesLevel_1State extends State<StoriesLevel_1> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text('The lazy crocodile',
                style: GoogleFonts.lora(
                  textStyle: const TextStyle(
                      color: Color(0xFF387C4E),
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                )),
          ),
          Image.asset('assets/Remote working.png'),
          Container(
            height: size.height(context) * .222,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SingleChildScrollView(
              child: Text(
                  'Suspendisse quis eu pellentesque ultrices tristique. Faucibus mi, pellentesque nec vulputate quam. Donec tortor pellentesque consequat nec. Ultrices turpis tellus viverra ut montes, ultricies. Venenatis sit pulvinar diam nam. Ut diam viverra arcu non tincidunt diam. Mauris tellus neque, eget malesuada nunc turpis molestie netus eget. Sed cursus tempus pharetra sociis felis, leo massa faucibus. Nulla est nisl eget tristique gravida. Nisl elementum, cursus justo ut viverra neque quis molestie. Nunc egestas accumsan, sed enim lacus tellus massa id. Massa est lacus pellentesque semper. Leo odio nunc integer mauris. Scelerisque volutpat velit elit eget posuere montes, ipsum. Diam aliquam semper vitae in.',
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
                Navigator.pushNamed(context, StoriesProceed_1.routeName);
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
