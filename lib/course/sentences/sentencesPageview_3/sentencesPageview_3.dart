import 'package:dotted_border/dotted_border.dart';
import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/sentences/sentencesPageview_3/sentencesLevel_3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class sentencesPageview_3 extends StatefulWidget {
  const sentencesPageview_3({
    Key? key,
  }) : super(key: key);

  static const String routeName = '/sentences-pageview-3';

  @override
  State<sentencesPageview_3> createState() => _sentencesPageview_3State();
}

class _sentencesPageview_3State extends State<sentencesPageview_3> {
  late PageController controller;
  late List<Widget> _list;
  late int page;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    _list = <Widget>[
      sentencesLevel_3(controller: controller),
    ];
    page = 0;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      body: SafeArea(
        child: SizedBox(
          height: size.height(context),
          width: size.width(context),
          child: Stack(
            children: [
              Positioned(
                  child: Image.asset(
                "assets/Group68.png",
              )),
              Positioned(
                  top: 80,
                  left: 140,
                  child: Text(
                    'Level-3',
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFFFFF))),
                  )),
              Positioned(
                left: size.width(context) * 0.089,
                top: size.height(context) * 0.15,
                right: size.width(context) * 0.089,
                child: Image.asset('assets/Group9.png'),
              ),
              Positioned(
                top: size.height(context) * 0.20,
                left: (size.width(context) * 0.08),
                child: Container(
                  width: size.width(context) * 0.85,
                  height: size.height(context) * 0.70,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(4),
                      border:
                          Border.all(width: 3, color: const Color(0xFF2963E4))),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    width: size.width(context) * 0.65,
                    height: size.height(context) * 0.50,
                    child: DottedBorder(
                      padding: const EdgeInsets.all(10),
                      dashPattern: const [8, 6],
                      strokeWidth: 3,
                      color: const Color(0xFFDF577E),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: PageView(
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          controller: controller,
                          clipBehavior: Clip.antiAlias,
                          children: _list,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: size.width(context) * .075,
                  top: size.height(context) * .04,
                  child: Image.asset(
                    'assets/Group.png',
                    height: size.height(context) * .04,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
