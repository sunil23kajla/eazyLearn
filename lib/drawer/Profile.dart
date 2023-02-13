import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/drawer/editProfile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const String routeName = '/profile-page';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              size: 30,
              color: Colors.black,
            )),
        title: Text(
          "Profile",
          style: GoogleFonts.lora(
              textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000))),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, EditProfile.routeName);
              },
              child: Text(
                'Edit',
                style: GoogleFonts.sourceSansPro(
                    decoration: TextDecoration.underline,
                    textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF011AFD))),
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SizedBox(
        height: size.height(context),
        child: Stack(children: [
          Positioned(
              right: size.width(context) * .07,
              child: Image.asset(
                'assets/Group49.png',
                height: size.height(context) * .04,
              )),
          Positioned(
              top: size.height(context) * .14,
              left: size.width(context) * .07,
              child: Image.asset(
                'assets/cloud.png',
                height: size.height(context) * .04,
              )),
          Positioned(
              right: size.width(context) * .07,
              top: size.height(context) * .335,
              child: Image.asset(
                'assets/Group49.png',
                height: size.height(context) * .04,
              )),
          Positioned(
              bottom: size.width(context) * .2,
              right: size.width(context) * .2,
              child: Image.asset(
                'assets/Group49.png',
                height: size.height(context) * .04,
              )),
          Positioned(
            left: size.width(context) * .333,
            top: size.height(context) * .03,
            child: Container(
              width: size.width(context) * .3,
              height: size.height(context) * .14,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/Ellipse50.png'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(200)),
            ),
          ),
          Positioned(
            left: size.width(context) * .09,
            top: size.height(context) * .23,
            child: Text('Full Name',
                style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        color: Color(0xFF4A4A4A),
                        fontSize: 16,
                        fontWeight: FontWeight.w600))),
          ),
          Positioned(
              left: size.width(context) * .09,
              top: size.height(context) * .265,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: size.height(context) * .05,
                width: size.width(context) * .82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFF6F6F6)),
                child: Text('Ruhan Sharma',
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 15,
                            fontWeight: FontWeight.w600))),
              )),
          Positioned(
            left: size.width(context) * .09,
            top: size.height(context) * .36,
            child: Text('Class',
                style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        color: Color(0xFF4A4A4A),
                        fontSize: 16,
                        fontWeight: FontWeight.w600))),
          ),
          Positioned(
              left: size.width(context) * .09,
              top: size.height(context) * .395,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: size.height(context) * .05,
                width: size.width(context) * .82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFF6F6F6)),
                child: Text('L.K.G',
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            color: Color(0xFF4A4A4A),
                            fontSize: 16,
                            fontWeight: FontWeight.w600))),
              )),
          Positioned(
            left: size.width(context) * .09,
            top: size.height(context) * .49,
            child: Text('Age',
                style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        color: Color(0xFF4A4A4A),
                        fontSize: 16,
                        fontWeight: FontWeight.w600))),
          ),
          Positioned(
              left: size.width(context) * .09,
              top: size.height(context) * .525,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: size.height(context) * .05,
                width: size.width(context) * .82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFF6F6F6)),
                child: Text('2.5',
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            color: Color(0xFF4A4A4A),
                            fontSize: 16,
                            fontWeight: FontWeight.w600))),
              )),
          Positioned(
            left: size.width(context) * .09,
            top: size.height(context) * .62,
            child: Text('Email Address',
                style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        color: Color(0xFF4A4A4A),
                        fontSize: 16,
                        fontWeight: FontWeight.w600))),
          ),
          Positioned(
              left: size.width(context) * .09,
              top: size.height(context) * .655,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: size.height(context) * .05,
                width: size.width(context) * .82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFF6F6F6)),
                child: Text('rusharma1212@gmail.com',
                    style: GoogleFonts.sourceSansPro(
                        textStyle: const TextStyle(
                            color: Color(0xFF4A4A4A),
                            fontSize: 16,
                            fontWeight: FontWeight.w600))),
              )),
        ]),
      ),
    );
  }
}
