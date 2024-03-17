import 'package:flutter/material.dart';
import 'package:appdice/gradint_container.dart';

void main() => runApp(const Appdice());

class Appdice extends StatelessWidget {
  const Appdice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dice Roll 1 to 6'),
          backgroundColor: const Color.fromARGB(96, 53, 58, 59),
        ),
        body: const GradientContainer(
          Color.fromARGB(255, 255, 255, 255),
          Color.fromARGB(96, 53, 58, 59),
        ),
      ),
    );
  }
}
