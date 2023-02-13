import 'dart:math' as maths;

import 'package:eazylearn/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/TextFieldWidget.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  static const String routeName = '/new-password';

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  TextEditingController newpassword = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Create new password",
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
                    image:
                        const AssetImage('assets/imgpsh_fullsize_anim (1).gif'),
                    height: size.height(context) * .08,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  left: size.width(context) * .25,
                  top: size.height(context) * .15,
                  child: Image.asset(
                    'assets/Password Lock 5 by Streamlinehq.png',
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
                  left: size.width(context) * .12,
                  child: Text(
                    'Your new password must be different from',
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
                Positioned(
                  top: size.height(context) * .555,
                  left: size.width(context) * .24,
                  child: Text(
                    'previously used password.',
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
              newpassword, "New password", TextInputType.visiblePassword),
          const SizedBox(
            height: 20,
          ),
          TextFieldWidget(confirmpassword, "Confirm password",
              TextInputType.visiblePassword),
          const SizedBox(
            height: 10,
          ),
          // TextButton(
          //     onPressed: () {},
          //     child: const Text(
          //       'Change Password',
          //       style: TextStyle(color: Color(0xFFFC445D)),
          //     )),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFE07F50),
              borderRadius: BorderRadius.circular(50),
            ),
            child: GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (BuildContext context) =>
                //               const VerifyScreen()));
                // },
                child: Row(
              children: const <Widget>[
                Expanded(
                  flex: 5,
                  child: Text(
                    'Save',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )),
          ),
        ],
      )),
    );
  }
}
