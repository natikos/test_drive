import 'package:flutter/material.dart';

class PulseText extends StatefulWidget {
  final String text;
  final bool isChanged;
  PulseText({Key key, @required this.text, this.isChanged}) : super(key: key);

  @override
  _PulseTextState createState() => _PulseTextState();
}

class _PulseTextState extends State<PulseText> {
  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      style: widget.isChanged
          ? TextStyle(
              fontFamily: 'VT323',
              fontSize: 60,
              color: Colors.white,
              fontWeight: FontWeight.bold)
          : TextStyle(
              fontFamily: 'VT323',
              fontSize: 10,
              color: Colors.black,
              fontWeight: FontWeight.bold),
      duration: const Duration(milliseconds: 200),
      child: Text(widget.text),
    );
  }
}
