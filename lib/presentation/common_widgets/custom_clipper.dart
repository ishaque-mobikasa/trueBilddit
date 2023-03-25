import 'package:flutter/material.dart';

class OvalShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(
        0,
        size.height -
            20); // Start at the bottom left corner, but with a 20 pixel gap from the bottom
    path.quadraticBezierTo(
        size.width / 2,
        size.height + 20,
        size.width,
        size.height -
            20); // Draw a quadratic bezier curve to create the nail end shape
    path.lineTo(size.width, 0); // Draw a line to the top right corner
    path.lineTo(
        0, 0); // Draw a line back to the top left corner to complete the shape
    path.close(); // Close the path to make sure it's a closed shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
