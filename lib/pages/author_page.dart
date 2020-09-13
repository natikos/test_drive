import 'package:flutter/material.dart';

class AuthorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Natalia Kostelna',
              style: TextStyle(
                  color: Colors.green, fontSize: 18, fontFamily: 'VT323'),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage('assets/me.jpg'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: RaisedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Go back'),
                color: Colors.green,
                textColor: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
