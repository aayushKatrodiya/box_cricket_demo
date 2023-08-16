// ignore_for_file: file_names
import 'package:box_cricket_demo/box_ui_controller/login_page_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageUi extends StatefulWidget {
  const LoginPageUi({super.key});

  @override
  State<LoginPageUi> createState() => _LoginPageUiState();
}

class _LoginPageUiState extends State<LoginPageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "We're all set!",
                style: GoogleFonts.lato(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              loginPageUserEnteredData(
                controller: LoginPageUiController.nameTextController,
                hintTxt: "Name",
                prefixIcon: CupertinoIcons.textformat,
              ),
              const SizedBox(height: 15),
              loginPageUserEnteredData(
                controller: LoginPageUiController.emaiTextController,
                hintTxt: "Email",
                prefixIcon: CupertinoIcons.mail,
              ),
              const SizedBox(height: 50),
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
                  width: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Let's Go",
                      style: GoogleFonts.basic(
                        fontSize: 25,
                        color: Colors.white,
                      ),
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
