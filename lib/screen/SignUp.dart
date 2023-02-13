import 'dart:math' as maths;

import 'package:eazylearn/screen/PageViewWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/TextFieldWidget.dart';
import '../constant/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const String routeName = "/signup-page";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                // color: Colors.red,
                height: size.height(context) * .612,
                child: Stack(
                  children: [
                    Positioned(
                      top: size.height(context) * .002,
                      left: size.width(context) * .15,
                      child: Image(
                        image:
                            const AssetImage('assets/imgpsh_fullsize_anim.png'),
                        height: size.height(context) * .077,
                        width: size.width(context) * .70,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                        top: size.height(context) * .12,
                        left: size.width(context) * .09,
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
                      top: size.height(context) * .047,
                      left: size.width(context) * .050,
                      child: Image.asset(
                        'assets/cloud.png',
                        height: size.height(context) * .086,
                      ),
                    ),
                    Positioned(
                      top: size.height(context) * .09,
                      right: size.width(context) * .050,
                      child: Image.asset(
                        'assets/Group49.png',
                        height: size.height(context) * .086,
                      ),
                    ),
                    Positioned(
                      top: size.height(context) * .49,
                      right: size.width(context) * .05,
                      child: Image(
                        image: const AssetImage(
                            'assets/imgpsh_fullsize_anim (1).gif'),
                        height: size.height(context) * .08,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      top: size.height(context) * .2,
                      left: size.width(context) * .03,
                      right: size.width(context) * .03,
                      child: Column(
                        children: [
                          TextFieldWidget(
                              name, "Enter your name", TextInputType.text),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(mobileno, "Enter your mobile no.",
                              TextInputType.number),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(email, "Enter your email",
                              TextInputType.emailAddress),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(password, "Enter your password",
                              TextInputType.text),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: size.height(context) * .053,
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE07F50),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: InkWell(
                                borderRadius: BorderRadius.circular(100),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, PageViewScreen.routeName);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Sign up',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.sourceSansPro(
                                          textStyle: const TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  const Positioned(
                    child: Image(
                      image: AssetImage('assets/imgpsh_fullsize_anim.gif'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    right: size.width(context) * .09,
                    child: Image.asset(
                      'assets/cloud6.png',
                      height: size.height(context) * .086,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
