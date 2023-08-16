import 'package:box_cricket_demo/box_ui_controller/stadium_option_controller.dart';
import 'package:flutter/material.dart';

class BoxBookingPage extends StatefulWidget {
  const BoxBookingPage({super.key});

  @override
  State<BoxBookingPage> createState() => _BoxBookingPageState();
}

class _BoxBookingPageState extends State<BoxBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Box booking",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.black26,
        elevation: 10,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: StadiumOptionController.boxData.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                    radius: 25,
                    child: Image.asset(
                        StadiumOptionController.boxData[index]['image'])),
                title: Text(
                  StadiumOptionController.boxData[index]['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle:
                    Text(StadiumOptionController.boxData[index]['location']),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
