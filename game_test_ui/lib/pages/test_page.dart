import 'package:flutter/material.dart';
import 'package:game_test_ui/constants/app_color.dart';

import '../components/test_page_app_bar_title.dart';
import '../components/test_slider.dart';
import '../components/variants.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.bgColor,
        title: const TestPageAppTitle(),
        elevation: 0,
      ),
      body: Column(
        children: [
          const TestSlider(),
          const Text(
            'Washington',
            style: TextStyle(fontSize: 32, height: 2),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/capitals/washington.jpg'),
            ),
          ),
          const Variants(),
        ],
      ),
    );
  }
}
