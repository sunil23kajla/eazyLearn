import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/screen/OnBoarding1.dart';
import 'package:eazylearn/screen/OnBoarding2.dart';
import 'package:eazylearn/screen/OnBoarding3.dart';
import 'package:eazylearn/screen/Success.dart';
import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  static const String routeName = "/pageView";

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  late PageController controller;
  late List<Widget> _list;
  late int page;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    _list = <Widget>[
      OnBoarding1_Screen(controller: controller),
      OnBoarding2Screen(
        controller: controller,
      ),
      OnBoarding3_Screen(
        controller: controller,
      ),
      const SuccessScreen()
    ];
    page = 0;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      body: SafeArea(
        child: SizedBox(
          height: size.height(context),
          width: size.width(context),
          child: Stack(
            children: [
              Positioned(
                  top: 30,
                  left: 0,
                  child: Image.asset("assets/cloud.png", height: 80)),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset("assets/c2.png", height: 50)),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset("assets/c2.png", height: 50)),
              Positioned(
                  bottom: 0,
                  child: Image.asset(
                    "assets/green.png",
                    width: MediaQuery.of(context).size.width,
                    height: size.height(context) * .37,
                    fit: BoxFit.fill,
                  )),
              Positioned(
                top: 110,
                left: 62,
                child: SizedBox(
                  width: size.width(context) * .68,
                  height: size.height(context) * .50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17),
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      controller: controller,
                      clipBehavior: Clip.antiAlias,
                      children: _list,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
