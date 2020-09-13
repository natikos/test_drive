import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_drive/widgets/pulse_text.dart';

class DynamicBackground extends StatefulWidget {
  @override
  _DynamicBackgroundState createState() => _DynamicBackgroundState();
}

class _DynamicBackgroundState extends State<DynamicBackground> {
  MaterialColor currentColor = Colors.primaries[0];
  bool isChanged = false;
  void changeColor() {
    setState(() {
      currentColor =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
      isChanged = !isChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColor,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: currentColor,
        child: Center(
          child: PulseText(
            text: 'Hey there!',
            isChanged: isChanged,
          ),
        ),
      ),
    );
  }
}
