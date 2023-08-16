// ignore_for_file: file_names
import 'dart:developer';
import 'package:box_cricket_demo/box_ui_controller/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpPart extends StatefulWidget {
  const OtpPart({super.key});

  @override
  State<OtpPart> createState() => _OtpPartState();
}

class _OtpPartState extends State<OtpPart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "OTP Verification",
              style: GoogleFonts.lato(
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Please enter the OTP sent to\n               your mobile",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 20),
            Pinput(
              defaultPinTheme: OTPController.defaultPinTheme,
              focusedPinTheme: OTPController.focusedPinTheme,
              submittedPinTheme: OTPController.submittedPinTheme,
              validator: (otp) {
                return otp == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => log(pin),
            ),
            const SizedBox(height: 60),
            const Text("Resend 00:00")
          ],
        ),
      ),
    );
  }
}
