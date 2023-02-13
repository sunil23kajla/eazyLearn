import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/subScription/payment/payMent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubScription extends StatefulWidget {
  const SubScription({Key? key}) : super(key: key);

  static const String routeName = '/sub-scription';

  @override
  State<SubScription> createState() => _SubScriptionState();
}

class _SubScriptionState extends State<SubScription> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      body: SafeArea(
        child: SizedBox(
          height: size.height(context),
          width: size.width(context),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/Group.png',
                      fit: BoxFit.fill,
                      height: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/reindeer.png',
                  fit: BoxFit.contain,
                  height: size.height(context) * 0.14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Unlock Everythings',
                style: GoogleFonts.lora(
                    textStyle: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: size.width(context) * .2),
                child: Text(
                  'Courses, levels, fun videos, quiz and much more!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sourceSansPro(
                      color: const Color(0xFF646464),
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w600)),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                // color: Colors.blue,
                height: size.height(context) * .3,
                child: Stack(
                  children: [
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          cardWidget(size, context, '3', 'MONTHS', '\$23.99',
                              '\$7.99/mon'),
                          cardWidget(size, context, '12', 'MONTHS', '\$47.99',
                              '\$3.99/mon'),
                        ],
                      ),
                    ),
                    Positioned(
                      right: size.width(context) * .13,
                      child: Container(
                        height: size.height(context) * .035,
                        width: size.width(context) * .25,
                        decoration: BoxDecoration(
                            color: const Color(0xFFE07F50),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Text(
                            "Save 50%",
                            style: GoogleFonts.sourceSansPro(
                                color: const Color(0xffffffff4),
                                textStyle: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ),
                    )
                    //  duration == "12"
                    // ?
                    // : Container(),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: size.width(context) * .06),
                child: Text(
                  'Include 7-day free trial, Cancel anytime and nothing will be billed.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sourceSansPro(
                      color: const Color(0xFF646464),
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600)),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 44,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFE07F50),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PaymentScreen.routeName);
                    },
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Text(
                            'Continue',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sourceSansPro(
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFFFFFFFF))),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardWidget(
      Sizess size, BuildContext context, duration, String month, dolor, mon) {
    return Container(
      height: size.height(context) * 0.30,
      width: size.width(context) * 0.37,
      padding: EdgeInsets.symmetric(vertical: size.height(context) * 0.015),
      child: Container(
        height: size.height(context) * 0.27,
        width: size.width(context) * 0.37,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFFFFFFF),
        ),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: size.height(context) * 0.13,
                  width: size.width(context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF6F5FA),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        duration,
                        style: GoogleFonts.sourceSansPro(
                            textStyle: const TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                      Text(
                        month,
                        style: GoogleFonts.sourceSansPro(
                            textStyle: const TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xFFFFFFFF),
                  height: size.height(context) * 0.13,
                  width: size.width(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dolor,
                        style: GoogleFonts.sourceSansPro(
                            textStyle: const TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                      Text(
                        mon,
                        style: GoogleFonts.sourceSansPro(
                            textStyle: const TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
