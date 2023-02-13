import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/drawer/Help&Support.dart';
import 'package:eazylearn/drawer/Profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen/LoginPage.dart';

class menuButton extends StatefulWidget {
  const menuButton({Key? key}) : super(key: key);

  static const String routeName = '/menu-button';

  @override
  State<menuButton> createState() => _menuButtonState();
}

class _menuButtonState extends State<menuButton> {
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return SafeArea(
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Text('Eazylearn',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 21,
                            fontWeight: FontWeight.w600))),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 1,
              color: Color(0xFF000000),
            ),
            ListTile(
              leading: Image.asset(
                'assets/Vector5.png',
                height: size.height(context) * .03,
              ),
              title: Text('Your Profile',
                  style: GoogleFonts.sourceSansPro(
                      textStyle: const TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 15,
                          fontWeight: FontWeight.w600))),
              onTap: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
            ),
            const Divider(
              thickness: 1,
              color: Color(0xFF000000),
            ),
            ListTile(
              leading: Image.asset(
                'assets/Vector4.png',
                height: size.height(context) * .03,
              ),
              title: Text('Help & Support',
                  style: GoogleFonts.sourceSansPro(
                      textStyle: const TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 15,
                          fontWeight: FontWeight.w600))),
              onTap: () {
                Navigator.pushNamed(context, HelpSupport.routeName);
              },
            ),
            const Expanded(child: SizedBox()),
            const Divider(
              thickness: 1,
              color: Color(0xFF000000),
            ),
            ListTile(
              leading: Image.asset(
                'assets/Vector6.png',
                height: size.height(context) * .03,
              ),
              title: Text('Log Out',
                  style: GoogleFonts.sourceSansPro(
                      textStyle: const TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 15,
                          fontWeight: FontWeight.w600))),
              onTap: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return AlertDialog(
                        content: SizedBox(
                          height: 200,
                          child: Column(
                            children: <Widget>[
                              const Text('Are you sure you want to logout?',
                                  style: TextStyle(fontSize: 20)),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  RaisedButton(
                                      color: Colors.black,
                                      child: const Text(
                                        'Logout',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () async {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    const LoginScreen())),
                                            (route) => false);
                                      }),
                                  RaisedButton(
                                    child: const Text('Cancel'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
