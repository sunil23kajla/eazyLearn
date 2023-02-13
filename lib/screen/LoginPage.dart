import 'dart:math' as maths;

import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/screen/ForgotPassword.dart';
import 'package:eazylearn/screen/PageViewWidget.dart';
import 'package:eazylearn/screen/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = "/login-page";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                height: size.height(context) * .62,
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
                      top: size.height(context) * .52,
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
                          TextField(
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 15),
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(
                                  color: Color(0xFFA1A1A1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                              filled: true,
                              fillColor: Color(0xFFFFFFFF),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color(0xFFFFFFFF)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          TextField(
                              controller: password,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 15),
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(
                                    color: Color(0xFFA1A1A1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                                filled: true,
                                fillColor: Color(0xFFFFFFFF),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Color(0xFFFFFFFF)),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, ForgotScreen.routeName);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 14),
                                  child: Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.sourceSansPro(
                                        textStyle: const TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE07F50),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, PageViewScreen.routeName);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Go',
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
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don’t have account yet ?',
                                style: GoogleFonts.sourceSansPro(
                                    textStyle: const TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700)),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SignUpScreen.routeName);
                                },
                                child: Text(
                                  ' Sign up',
                                  style: GoogleFonts.sourceSansPro(
                                      textStyle: const TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Color(0xFF35A668),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ],
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
                      // fit: BoxFit.fill,
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
