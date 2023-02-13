import 'dart:math' as maths;

import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/screen/VerifyEmail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/TextFieldWidget.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  static const String routeName = "/forgot-page";

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Forgot Password",
          style: GoogleFonts.lora(
              textStyle: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFF9dc6fe),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height(context) * .62,
              child: Stack(
                children: [
                  Positioned(
                      top: size.height(context) * .075,
                      left: size.width(context) * .07,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(maths.pi),
                        child: Image.asset(
                          'assets/imgpsh_fullsize_anim (1).gif',
                          height: size.height(context) * .08,
                          fit: BoxFit.fill,
                        ),
                      )),
                  Positioned(
                    left: size.width(context) * .030,
                    child: Image.asset(
                      'assets/cloud.png',
                      height: size.height(context) * .086,
                    ),
                  ),
                  Positioned(
                    top: size.height(context) * .04,
                    right: size.width(context) * .050,
                    child: Image.asset(
                      'assets/Group49.png',
                      height: size.height(context) * .086,
                    ),
                  ),
                  Positioned(
                    top: size.height(context) * .38,
                    right: size.width(context) * .05,
                    child: Image(
                      image: const AssetImage(
                          'assets/imgpsh_fullsize_anim (1).gif'),
                      height: size.height(context) * .08,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: size.width(context) * .25,
                    top: size.height(context) * .15,
                    child: Image.asset(
                      'assets/Email Help 2 by Streamlinehq.png',
                      height: 180,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: size.height(context) * .48,
                    right: size.width(context) * .09,
                    child: Image.asset(
                      'assets/cloud6.png',
                      height: size.height(context) * .086,
                    ),
                  ),
                  Positioned(
                    top: size.height(context) * .53,
                    left: size.width(context) * .10,
                    child: Text(
                      'Please enter your email address to receive a',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 15,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                  Positioned(
                    top: size.height(context) * .555,
                    left: size.width(context) * .31,
                    child: Text(
                      'verification code.',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 15,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ],
              ),
            ),
            TextFieldWidget(
                email, "Enter your email", TextInputType.emailAddress),
            const SizedBox(
              height: 65,
            ),
            Container(
              height: 45,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFE07F50),
                borderRadius: BorderRadius.circular(50),
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, VerifyScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Send',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sourceSansPro(
                            textStyle: const TextStyle(
                                color: Color(0xFFffffff),
                                fontSize: 20,
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
