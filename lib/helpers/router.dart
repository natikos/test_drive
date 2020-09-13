import 'package:flutter/material.dart';
import 'package:test_drive/pages/author_page.dart';

Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => AuthorPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      Offset begin = Offset(0.0, 1.0);
      Offset end = Offset.zero;
      Tween<Offset> tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
