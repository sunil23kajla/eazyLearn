import 'package:eazylearn/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_colors.dart';

class AnimalsName extends StatefulWidget {
  const AnimalsName({Key? key}) : super(key: key);
  static const String routeName = '/animals-name';

  @override
  State<AnimalsName> createState() => _AnimalsNameState();
}

class _AnimalsNameState extends State<AnimalsName> {
  @override
  Widget build(BuildContext context) {
    var index = ModalRoute.of(context)?.settings.arguments as int;
    var animalsD = animalsData[index];
    var size = Sizess();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: size.height(context) * .49,
            child: Stack(
              children: [
                Container(
                  height: size.height(context) * .42,
                  width: size.width(context),
                  decoration: BoxDecoration(
                    color: animalsD[2],
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        animalsD[1],
                        height: size.height(context) * .22,
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: size.width(context) * .075,
                    top: size.height(context) * .04,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/Group.png',
                        height: size.height(context) * .04,
                      ),
                    )),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: size.width(context) * .1),
                alignment: Alignment.centerLeft,
                child: Text(
                  animalsD[0],
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w400,
                      color: animalsD[3]),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      left: size.width(context) * .1,
                      right: size.width(context) * .02),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    fruitLongDesc,
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
