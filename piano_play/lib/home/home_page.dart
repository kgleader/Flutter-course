import 'package:flutter/material.dart';
import 'package:piano_play/components/piano_black_button.dart';
import 'package:piano_play/components/piano_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Drawer(): jan taraptan achylchu menu
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('My Piano App'),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 0,
            child: Center(
              child: Text('do re mi fa...'),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 2,
              // scrollDirection: Axis.horizontal: ListView.builder gorizontalnyi kurat
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // Stack widgettterdi ustu ustuno kurat
                return Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        PianoWhiteButton('Do'),
                        PianoWhiteButton('Re'),
                        PianoWhiteButton('Mi'),
                        PianoWhiteButton('Fa'),
                        PianoWhiteButton('Lya'),
                        PianoWhiteButton('Si'),
                        PianoWhiteButton('Do2'),
                      ],
                    ),
                    // Positioned: child widgetinin posissiasyn berebiz
                    Positioned(
                      left: 40.0,
                      right: 0.0,
                      top: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          PianoBlackButton('Do'),
                          PianoBlackButton('Re'),
                          PianoBlackButton('Mi'),
                          PianoBlackButton('Fa'),
                          PianoBlackButton('Lya'),
                          PianoBlackButton('Si'),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
