import 'package:flutter/material.dart';
import 'package:test_drive/widgets/dynamic_bg.dart';
import 'package:test_drive/widgets/nav_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Test drive Flutter App',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: DynamicBackground(),
      floatingActionButton: NavButton(),
    );
  }
}
