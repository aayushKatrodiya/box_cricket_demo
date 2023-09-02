import 'package:box_cricket_demo/box_ui_controller/payment_screen_controller.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 181, 167, 167),
        leading: const CircleAvatar(
          radius: 0,
          backgroundImage: AssetImage("assets/images/splash_screen_logo2.jpeg"),
        ),
        leadingWidth: 50,
        title: const Text(
          "A true box lovers",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size(20, 20),
          //rzp_test_jD2e7aX08jN4lE
          child: SizedBox(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Card, UPI & More",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                setState(() {});
              },
              child: PaymentScreenController.commonListTime(
                leading: Icons.credit_card,
                title: "Card",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
