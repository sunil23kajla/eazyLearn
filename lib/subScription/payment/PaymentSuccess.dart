import 'dart:async';

import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/course/letters/Intro1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  static const String routeName = '/payment-success';

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      Timer(const Duration(seconds: 5),
          () => Navigator.pushNamed(context, IntroScreen.routeName));
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                      onTap: () {
                        Navigator.popAndPushNamed(
                            context, IntroScreen.routeName);
                      },
                      child: const Icon(
                        Icons.next_plan,
                        size: 30,
                        color: Color(0xFFDF577E),
                      )
                      // Image.asset(
                      //   'assets/images-_2preview.png',
                      //   height: 30,
                      // ),
                      // child: Text('Next',
                      //     style: GoogleFonts.sourceSansPro(
                      //         textStyle: const TextStyle(
                      //             color: Color(0xFFDF577E),
                      //             fontSize: 15,
                      //             fontWeight: FontWeight.w600))),
                      )),
            ),
            Image.asset('assets/imgpsh_fullsize_anim (2).gif'),
            Text('Whooohoooo!',
                style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        color: Color(0xFFDF577E),
                        fontSize: 22,
                        fontWeight: FontWeight.w700))),
            Text('Your payment process is complete..',
                style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        color: Color(0xFFDF577E),
                        fontSize: 20,
                        fontWeight: FontWeight.w700))),
            SizedBox(
              height: size.height(context) * 0.11,
            ),
            Image.asset('assets/imgpshanim (1).gif'),
          ],
        ),
      ),
    );
  }
}
