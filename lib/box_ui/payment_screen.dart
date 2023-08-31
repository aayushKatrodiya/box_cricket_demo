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
        backgroundColor: Colors.grey,
        leading: const CircleAvatar(
          radius: 0,
          backgroundColor: Colors.black,
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
      body: const Column(
        children: [],
      ),
    );
  }
}
