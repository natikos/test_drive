import 'package:flutter/material.dart';
import 'package:test_drive/helpers/router.dart';

class NavButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        Navigator.of(context).push(createRoute());
      },
      elevation: 2.0,
      fillColor: Colors.black,
      child: Icon(
        Icons.navigate_next,
        size: 25.0,
        color: Colors.green,
      ),
      padding: EdgeInsets.all(10.0),
      shape: CircleBorder(side: BorderSide(width: 3, color: Colors.green)),
    );
  }
}
