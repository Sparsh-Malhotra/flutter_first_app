import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(this.text, {super.key});

  const TextContainer.sayHi(String name, {super.key}) : text = 'Hi, I am $name';

  final String text;

  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 28),
      ),
    );
  }
}
