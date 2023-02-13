import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/subScription/payment/PayMentMethod.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  static const String routeName = '/payment-screen';

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String? check;

  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      appBar: AppBar(
        // leading: Image.asset(
        //   'assets/Vector.png',
        //   fit: BoxFit.fill,
        // ),

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
          "Payment Method",
          style: GoogleFonts.lora(
              textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000))),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: size.height(context) * 0.75,
          width: size.width(context) * 0.80,
          child: Column(
            children: [
              cardWidget(
                  size, context, 'MasterCard', 'assets/download.png', 'first'),
              cardWidget(
                  size, context, 'PayPal', 'assets/paypal.png', 'second'),
              cardWidget(size, context, '', 'assets/download2.png', 'third'),
            ],
          ),
        ),
        Container(
          height: 44,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: const Color(0xFFE07F50),
            borderRadius: BorderRadius.circular(50),
          ),
          child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, PaymentMethod.routeName);
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Checkout',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFFFF))),
                    ),
                  ),
                ],
              )),
        ),
      ]),
    );
  }

  Widget cardWidget(
      Sizess size, BuildContext context, cardName, images, String text) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 20),
      height: size.height(context) * 0.20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFFFFFFF),
          border: Border.all(width: 2, color: const Color(0xFF606060))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                images,
                height: 45,
                fit: BoxFit.fill,
              ),
              Radio(
                value: text,
                groupValue: check,
                onChanged: (value) {
                  setState(() {
                    check = value.toString();
                  });
                },
              ),
            ],
          ),
          Text(cardName)
        ],
      ),
    );
  }
}
