// ignore_for_file: file_names
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Hi there!",
              style: GoogleFonts.aclonica(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 70),
            const Text(
              "Please enter a 10-digit valid mobile\n           number to recieve OTP",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IntlPhoneField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: "IN",
                onChanged: (phone) {
                  log(phone.completeNumber);
                },
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "       By proceeding, you agree to the\nTearms and condition and Privacy Policy",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 10, 171, 196),
                ),
              ),
              onPressed: () {
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: const BoxDecoration(),
                child: const Center(
                  child: Text(
                    "Get OTP",
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
