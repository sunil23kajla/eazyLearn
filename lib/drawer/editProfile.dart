import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/app_colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  static const String routeName = '/edit-profile';

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController fullName = TextEditingController();
  TextEditingController classes = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController email = TextEditingController();

  bool? pickUploaded = false;
  File? _image;
  upload() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File? file = File(result.files.single.path!);
      setState(() {
        pickUploaded = true;
        _image = file;
      });
    } else {
      // User canceled the picker
    }
  }

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
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: size.width(context),
              height: size.height(context) * .8,
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
                    bottom: size.width(context) * .02,
                    right: size.width(context) * .2,
                    child: Image.asset(
                      'assets/Group49.png',
                      height: size.height(context) * .04,
                    )),
                Positioned(
                    left: size.width(context) * .35,
                    child: selectImage(size, context)),
                Positioned(
                    left: size.width(context) * .54,
                    top: size.height(context) * .12,
                    child: addImage(size, context)),
                Positioned(
                  left: size.width(context) * .09,
                  top: size.height(context) * .225,
                  child: RichText(
                    text: TextSpan(
                      text: "Full Name",
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFF4A4A4A),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      children: const [
                        TextSpan(
                          text: "*",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  // child: Text('Full Name*',
                  //     style: GoogleFonts.sourceSansPro(
                  //         textStyle: const TextStyle(
                  //             color: Color(0xFF4A4A4A),
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.w600))),
                ),
                Positioned(
                  left: size.width(context) * .09,
                  top: size.height(context) * .355,
                  child: RichText(
                    text: TextSpan(
                      text: "Class",
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFF4A4A4A),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      children: const [
                        TextSpan(
                          text: "*",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: size.width(context) * .095,
                  top: size.height(context) * .485,
                  child: RichText(
                    text: TextSpan(
                      text: "Age",
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFF4A4A4A),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      children: const [
                        TextSpan(
                          text: "*",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: size.width(context) * .09,
                  top: size.height(context) * .615,
                  child: RichText(
                    text: TextSpan(
                      text: "Email Address",
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Color(0xFF4A4A4A),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      children: const [
                        TextSpan(
                          text: "*",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: size.height(context) * .263,
                    left: size.width(context) * .09,
                    child: profileEdit(
                        'Enter full name', fullName, TextInputType.text)),
                Positioned(
                    top: size.height(context) * .393,
                    left: size.width(context) * .09,
                    child: profileEdit(
                        'Enter class', classes, TextInputType.text)),
                Positioned(
                    top: size.height(context) * .521,
                    left: size.width(context) * .09,
                    child:
                        profileEdit('Enter age', age, TextInputType.datetime)),
                Positioned(
                    top: size.height(context) * .651,
                    left: size.width(context) * .09,
                    child: profileEdit('Enter email address', email,
                        TextInputType.emailAddress)),
              ]),
            ),
            Container(
              height: 42,
              margin: const EdgeInsets.symmetric(horizontal: 25),
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
        ),
      ),
    );
  }

  Widget selectImage(Sizess size, BuildContext context) {
    return GestureDetector(
      onTap: () {
        upload();
      },
      child: pickUploaded!
          ? Container(
              width: size.width(context) * .3,
              height: size.height(context) * .14,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: FileImage(
                        _image!,
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(200)),
            )
          : Center(
              child: Image.asset(
                'assets/Vector7.png',
                width: size.width(context) * .3,
                height: size.height(context) * .14,
              ),
            ),
    );
  }

  Widget addImage(Sizess size, BuildContext context) {
    return GestureDetector(
        onTap: () {
          upload();
        },
        child: SizedBox(
          height: 20,
          child: Image.asset(
            'assets/Vector8.png',
          ),
        ));
  }

  Widget profileEdit(title, value, board) {
    return Column(
      children: [
        SizedBox(
          height: 42,
          width: 300,
          child: TextField(
              keyboardType: board,
              controller: value,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 15),
                hintText: title,
                hintStyle: const TextStyle(
                    color: Color(0xFFA1A1A1),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
                filled: true,
                fillColor: const Color(0xFFFFFFFF),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xFFFFFFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Color(0xFFFFFFFF)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
