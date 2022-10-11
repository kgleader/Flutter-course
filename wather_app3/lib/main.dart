import 'package:flutter/material.dart';
import 'package:wather_app3/views/additional_information.dart';
import 'package:wather_app3/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf9f9f9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFf9f9f9),
        elevation: 0.0,
        title: const Text(
          'Weater App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          currentWeather(Icons.wb_sunny_rounded, "26.3", "India"),
          const SizedBox(
            height: 60.0,
          ),
          const Text(
            "Additional information",
            style: TextStyle(
              fontSize: 24.0,
              color: Color(0xdd212121),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 20.0,
          ),
          additionalInformation('24', '2', "1014", "24.6"),
        ],
      ),
    );
  }
}
