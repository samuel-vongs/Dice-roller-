import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 11, 70, 220),
          Color.fromARGB(255, 3, 2, 32),
        ),
      ),
    ),
  );
}
