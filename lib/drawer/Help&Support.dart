import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/screen/ForgotPassword.dart';
import 'package:eazylearn/screen/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({Key? key}) : super(key: key);

  static const String routeName = '/help-suppoer';

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
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
          "Help & Support",
          style: GoogleFonts.lora(
              textStyle: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF000000))),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 12),
              child: Text(
                'Popular help resources',
                style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Image.asset(
                'assets/Group108.png',
                height: size.height(context) * .035,
              ),
              title: Text(
                'Change or reset your password',
                style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000))),
              ),
              onTap: () {
                Navigator.pushNamed(context, ForgotScreen.routeName);
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/Group108.png',
                height: size.height(context) * .035,
              ),
              title: Text(
                'Log out of Eazylearn',
                style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000))),
              ),
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
            ListTile(
              leading: Image.asset(
                'assets/Group108.png',
                height: size.height(context) * .035,
              ),
              title: Text(
                'Get certificate',
                style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000))),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(
                'assets/Group108.png',
                height: size.height(context) * .035,
              ),
              title: Text(
                'Change email address',
                style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000))),
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 17,
              ),
              child: SizedBox(
                height: 44,
                child: TextFormField(

                    // controller: value,

                    decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 7.0, horizontal: 15),
                  hintText: 'Search help',
                  hintStyle: TextStyle(
                      color: Color(0xFF535353),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xFFFFFFFF),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
