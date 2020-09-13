import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(TestDrive());

class TestDrive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test drive',
      home: HomePage(),
      theme: ThemeData(fontFamily: 'VT323'),
    );
  }
}
