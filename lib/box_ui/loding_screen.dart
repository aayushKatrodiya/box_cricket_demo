import 'dart:async';
import 'package:box_cricket_demo/box_ui/1splesh_screen.dart';
import 'package:flutter/material.dart';

class LodingScreen extends StatefulWidget {
  const LodingScreen({super.key});

  @override
  State<LodingScreen> createState() => _LodingScreenState();
}

class _LodingScreenState extends State<LodingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 20),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SpleshScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.green,
          strokeWidth: 4.5,
          color: Colors.black,
        ),
      ),
    );
  }
}
