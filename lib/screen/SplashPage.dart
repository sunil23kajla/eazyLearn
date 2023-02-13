import 'dart:async';
import "dart:math" as maths;

import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/screen/LoginPage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String routeName = "/splash-screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
        () => Navigator.pushNamed(context, LoginScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    var size = Sizess();

    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: size.height(context) * .002,
              left: size.width(context) * .15,
              child: Image(
                image: const AssetImage('assets/imgpsh_fullsize_anim.png'),
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
              top: size.height(context) * .45,
              right: size.width(context) * .05,
              child: Image(
                image: const AssetImage('assets/imgpsh_fullsize_anim (1).gif'),
                height: size.height(context) * .08,
                fit: BoxFit.fill,
              ),
            ),
            const Positioned(
              bottom: 0,
              child: Image(
                image: AssetImage('assets/imgpsh_fullsize_anim.gif'),
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              bottom: size.height(context) * .32,
              right: size.width(context) * .090,
              child: Image.asset(
                'assets/cloud6.png',
                height: size.height(context) * .086,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
