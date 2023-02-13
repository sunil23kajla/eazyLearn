import 'dart:async';

import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/screen/SelectCoures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const SelectCouresScreen())));
  }

  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin:
              const EdgeInsets.only(top: 22, left: 10, right: 10, bottom: 22),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(1),
            border: Border.all(width: 1, color: const Color(0xFFA1A1A1)),
          ),
          child: Stack(
            children: [
              Positioned(
                  child: Image.asset('assets/imgpsh_fullsize_anim (4).gif')),
              Positioned(
                top: size.height(context) * .18,
                left: size.width(context) * .15,
                child: Text(
                  'Wooohooo!!',
                  style: GoogleFonts.lora(
                      textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF000000))),
                ),
              ),
              Positioned(
                top: size.height(context) * .22,
                left: size.width(context) * .12,
                child: Text(
                  'Your child’s course is ready!',
                  style: GoogleFonts.sourceSansPro(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000))),
                ),
              ),
            ],
          ),
        )));
  }
}
