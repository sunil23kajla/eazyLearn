import 'package:eazylearn/course/Fruits/animalsName/AnimalsPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_colors.dart';
import '../../../constant/constants.dart';

class FruitsPage_1 extends StatefulWidget {
  const FruitsPage_1({Key? key}) : super(key: key);

  static const String routeName = '/fruits-page1';

  @override
  State<FruitsPage_1> createState() => _FruitsPage_1State();
}

class _FruitsPage_1State extends State<FruitsPage_1> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height(context) * .28,
              width: size.width(context),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/Group118.png",
                    fit: BoxFit.cover,
                    width: size.width(context),
                    height: size.height(context) * 1,
                  ),
                  Image.asset(
                    "assets/Group68.png",
                  ),
                  Positioned(
                    top: size.height(context) * .11,
                    left: size.width(context) * .4,
                    child: Text(
                      'Level-1',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFFFF))),
                    ),
                  ),
                  Positioned(
                    top: size.height(context) * .15,
                    left: size.width(context) * .09,
                    child: Image.asset(
                      'assets/Group-91.png',
                      width: size.width(context) * .85,
                    ),
                  ),
                  Positioned(
                    top: size.height(context) * .22,
                    left: size.width(context) * .4,
                    child: Text(
                      'Fruits',
                      style: GoogleFonts.lora(
                          textStyle: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF000000))),
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
            SizedBox(
              height: size.height(context) * .667,
              width: size.width(context),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/Group118.png",
                    fit: BoxFit.cover,
                    width: size.width(context),
                    height: size.height(context) * 1,
                  ),
                  ListView.builder(
                    itemCount: fruitsData.length,
                    itemBuilder: (context, index) {
                      var data = fruitsData[index];

                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, drouteName,
                              arguments: index);
                        },
                        child: fruitsWidget(
                          size,
                          context,
                          data[0],
                          fruitDesc,
                          data[2],
                          data[1],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.pushNamed(context, AnimalsPage.routeName);
        },
        child: Container(
          margin: EdgeInsets.only(
              bottom: size.height(context) * .046,
              right: size.width(context) * .003),
          child: Image.asset(
            'assets/Group66.png',
            height: size.height(context) * .06,
          ),
        ),
      ),
    );
  }

  Widget fruitsWidget(
      Sizess size, BuildContext context, title, texts, color, image) {
    return Padding(
      padding: EdgeInsets.only(bottom: size.height(context) * 0.05),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(6)),
            height: size.height(context) * .15,
            width: size.width(context) * .7,
            margin: EdgeInsets.only(right: size.width(context) * 0.05),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 5, left: 40, right: 5),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
                      fontFamily: fontFamily,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 40, right: 5),
                  child: Text(
                    texts,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
                      fontFamily: fontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              left: size.width(context) * .09,
              top: size.height(context) * 0.01,
              child: Image.asset(
                image,
                height: size.height(context) * .12,
              )),
        ],
      ),
    );
  }
}





// SingleChildScrollView(
//                 child: SizedBox(
//                   height: size.height(context),
//                   width: size.width(context),
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         top: size.height(context) * .02,
//                         left: size.height(context) * .1,
//                         child: fruitsWidget(size, context, "Apple", textss,
//                             const Color(0xFFFF807B), () {
//                           Navigator.pushNamed(context, FruitsName.routeName,
//                               arguments: 0);
//                         }),
//                       ),
//                       Positioned(
//                           left: size.width(context) * .05,
//                           top: size.height(context) * .034,
//                           child: Image.asset(
//                             'assets/red_apple.png',
//                             height: size.height(context) * .12,
//                           )),
//                       Positioned(
//                         top: size.height(context) * .2,
//                         left: size.height(context) * .1,
//                         child: fruitsWidget(size, context, "Pear", textss,
//                             const Color(0xFFF2C548), () {
//                           Navigator.pushNamed(context, FruitsName.routeName,
//                               arguments: 1);
//                         }),
//                       ),
//                       Positioned(
//                           left: size.width(context) * .035,
//                           top: size.height(context) * .22,
//                           child: Image.asset(
//                             'assets/pear.png',
//                             height: size.height(context) * .12,
//                           )),
//                       Positioned(
//                         top: size.height(context) * .4,
//                         left: size.height(context) * .1,
//                         child: fruitsWidget(size, context, "Bananas", textss,
//                             const Color(0xFFD0BE29), () {
//                           Navigator.pushNamed(context, FruitsName.routeName,
//                               arguments: 2);
//                         }),
//                       ),
//                       Positioned(
//                           left: size.width(context) * .033,
//                           top: size.height(context) * .42,
//                           child: Image.asset(
//                             'assets/bananas.png',
//                             height: size.height(context) * .11,
//                           )),
//                       Positioned(
//                         top: size.height(context) * .6,
//                         left: size.height(context) * .1,
//                         child: fruitsWidget(size, context, "Mango", textss,
//                             const Color(0xFF90731D), () {
//                           Navigator.pushNamed(context, FruitsName.routeName,
//                               arguments: 3);
//                         }),
//                       ),
//                       Positioned(
//                           left: size.width(context) * .033,
//                           top: size.height(context) * .62,
//                           child: Image.asset(
//                             'assets/mango.png',
//                             height: size.height(context) * .11,
//                           )),
//                     ],
//                   ),
//                 ),
//               ),