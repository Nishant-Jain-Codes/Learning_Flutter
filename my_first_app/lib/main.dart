import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';
const gradientColors = [
              Color.fromARGB(255, 246, 124, 67),
              Color.fromARGB(255, 236, 167, 55),
              Color.fromARGB(255, 236, 107, 48)
            ];
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(gradientColors)
      ),
    ),
  );
}
 