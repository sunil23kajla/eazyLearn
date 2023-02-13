import 'dart:math' as maths;

import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/screen/NewPassword.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  static const String routeName = '/varify-screen';

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  TextEditingController first = TextEditingController();
  TextEditingController two = TextEditingController();
  TextEditingController three = TextEditingController();
  TextEditingController four = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
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
          "Verify your email",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height(context) * .60,
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
                      'assets/Email Send Redbox 3 by Streamlinehq.png',
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
                    left: size.width(context) * .070,
                    child: Text(
                      'Please enter your 4 digit code sent to your email',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 15,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                  Positioned(
                    top: size.height(context) * .555,
                    left: size.width(context) * .44,
                    child: Text(
                      'address',
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
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 40,
                height: 35,
                margin: const EdgeInsets.only(right: 10.0),
                child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    controller: first,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 20),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 3),
                      counterText: "",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    )),
              ),
              Container(
                width: 40,
                height: 35,
                margin: const EdgeInsets.only(right: 10.0),
                child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    controller: two,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 20),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 3),
                      counterText: "",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    )),
              ),
              Container(
                width: 40,
                height: 35,
                margin: const EdgeInsets.only(right: 10.0),
                child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    controller: three,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 20),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 3),
                      counterText: "",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    )),
              ),
              Container(
                width: 40,
                height: 35,
                margin: const EdgeInsets.only(right: 10.0),
                child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    controller: four,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 20),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 3),
                      counterText: "",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    )),
              )
            ]),
            const SizedBox(
              height: 23,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Resend Code',
                  style: GoogleFonts.sourceSansPro(
                      textStyle: const TextStyle(
                          color: Color(0xFF00528F),
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                )),
            const SizedBox(
              height: 23,
            ),
            Container(
              height: 48,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFE07F50),
                borderRadius: BorderRadius.circular(50),
              ),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const NewPasswordScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Verify',
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
      ),
    );
  }
}
