import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FruitsName extends StatefulWidget {
  const FruitsName({Key? key}) : super(key: key);

  static const String routeName = '/fruit-name';

  @override
  State<FruitsName> createState() => _FruitsNameState();
}

class _FruitsNameState extends State<FruitsName> {
  @override
  Widget build(BuildContext context) {
    var index = ModalRoute.of(context)?.settings.arguments as int;
    var fruitD = fruitsData[index]; 
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
                    color: fruitD[2],
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        fruitD[1],
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
                  fruitD[0],
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w400,
                      color: fruitD[3]),
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
