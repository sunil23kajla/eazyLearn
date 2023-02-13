import 'package:eazylearn/Widget/TextFieldWidget.dart';
import 'package:eazylearn/constant/app_colors.dart';
import 'package:eazylearn/subScription/payment/PaymentSuccess.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  static const String routeName = '/payment-method';

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  TextEditingController cardholderName = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController exp = TextEditingController();
  TextEditingController cvv = TextEditingController();

  bool valuefirst = false;
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
          "Add Detail",
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
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('MasterCard',
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500))),
              SizedBox(
                height: size.height(context) * 0.025,
              ),
              SizedBox(
                height: size.height(context) * 0.050,
                child: TextFieldWidget(
                    cardholderName, "Cardholder Name", TextInputType.text),
              ),
              SizedBox(
                height: size.height(context) * 0.050,
              ),
              SizedBox(
                height: 40,
                child: TextFieldWidget(
                    cardNumber, "Card Number", TextInputType.number),
              ),
              SizedBox(
                height: size.height(context) * 0.050,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height(context) * 0.055,
                    width: size.width(context) * 0.48,
                    child: TextFieldWidget(
                        cardNumber, "Exp. Date", TextInputType.number),
                  ),
                  SizedBox(
                    height: size.height(context) * 0.055,
                    width: size.width(context) * 0.46,
                    child: TextFieldWidget(
                        cardNumber, "CVV", TextInputType.number),
                  ),
                ],
              ),
              SizedBox(
                height: size.height(context) * 0.050,
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: const Color(0xFF5AC7F0),
                    value: valuefirst,
                    onChanged: (value) {
                      setState(() {
                        valuefirst = value!;
                      });
                    },
                  ),
                  Text('Save this card for faster payment.',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ))
                ],
              ),
              SizedBox(
                height: size.height(context) * 0.30,
              ),
              Container(
                height: size.height(context) * .050,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFE07F50),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PaymentSuccess.routeName);
                    },
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          flex: 5,
                          child: Text(
                            'Pay Now',
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
      ),
    );
  }
}
