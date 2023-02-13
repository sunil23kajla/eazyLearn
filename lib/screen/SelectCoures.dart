import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/data/data.dart';
import 'package:eazylearn/drawer/menuButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectCouresScreen extends StatefulWidget {
  const SelectCouresScreen({Key? key}) : super(key: key);

  static const String routeName = '/select-course';

  @override
  State<SelectCouresScreen> createState() => _SelectCouresScreenState();
}

class _SelectCouresScreenState extends State<SelectCouresScreen> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  final List<bool> isSelected = List.generate(10, (i) => false);
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      key: _scaffoldState,
      drawer: const menuButton(),
      backgroundColor: const Color(0xFF9dc6fe),
      body: SafeArea(
          child: SizedBox(
        height: size.height(context),
        width: size.width(context),
        child: Stack(
          children: [
            Positioned(
              bottom: size.height(context) * 0.05,
              left: (size.width(context) - size.width(context) * 0.70) / 2,
              child: Container(
                height: size.height(context) * 0.67,
                width: size.width(context) * 0.70,
                // margin: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  height: size.height(context) * 0.60,
                  width: size.width(context) * 0.75,
                  margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(1),
                      border: Border.all(
                          width: 1.5, color: const Color(0xFFA1A1A1))),
                  child: Column(
                    children: [
                      Text(
                        'Course',
                        style: GoogleFonts.lora(
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Image.asset(
              'assets/rainbow.png',
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: size.height(context) * 0.08,
              left: (size.width(context) - size.width(context) * 0.55) / 2,
              child: SizedBox(
                height: size.height(context) * 0.55,
                width: size.width(context) * 0.55,
                child: ListView.builder(
                    itemCount: courseList.length,
                    itemBuilder: (context, index) {
                      List<String> data = courseList[index];
                      return InkWell(
                        // splashColor: Colors.amber,
                        onTap: () {
                          isSelected.fillRange(0, courseList.length - 1, false);
                          isSelected[index] = !isSelected[index];

                          setState(() {});
                          Navigator.pushNamed(context, data[1]);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          height: size.height(context) * 0.0435,
                          width: size.width(context) * 0.52,
                          decoration: BoxDecoration(
                            color: isSelected[index]
                                ? const Color(0xFFDDF4FF)
                                : const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 2, color: const Color(0xFFA1DAF4)),
                          ),
                          child: Center(
                            child: Text(data[0],
                                style: GoogleFonts.sourceSansPro(
                                    textStyle: const TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400))),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Positioned(
                height: size.height(context) * .03,
                width: size.width(context) * .06,
                top: size.height(context) * .03,
                left: size.width(context) * .06,
                child: InkWell(
                    onTap: () {
                      _scaffoldState.currentState!.openDrawer();
                    },
                    child: Image.asset('assets/Menu.png'))),
          ],
        ),
      )),
    );
  }
}
