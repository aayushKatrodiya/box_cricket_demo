import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPController {
  static final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color.fromARGB(255, 47, 55, 60),
      ),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  static final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(
      color: Colors.green,
    ),
    borderRadius: BorderRadius.circular(8),
  );

  static final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: const Color.fromRGBO(234, 239, 243, 1),
    ),
  );
}
