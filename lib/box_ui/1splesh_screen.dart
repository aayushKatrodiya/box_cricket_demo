// ignore_for_file: file_names
import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            height: 852,
            fit: BoxFit.fill,
            image: AssetImage("assets/images/splash_screen_logo2.jpeg"),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 300,
                  width: 220,
                  // color: Colors.orange,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/images/splash screen logo.png"),
                        const SizedBox(height: 20),
                        const Text(
                          "Hello Cricketers",
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                blurRadius: 1000,
                                color: Colors.grey,
                                offset: Offset(0.1, 2),
                              ),
                            ],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
