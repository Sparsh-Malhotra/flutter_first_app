import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() {
    return _Counter();
  }
}

class _Counter extends State<Counter> {
  var counter = 0;

  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  void decreaseCounter() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Counter : $counter',
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: increaseCounter,
                      child: const Text('Increase')),
                  ElevatedButton(
                      onPressed: decreaseCounter,
                      child: const Text('Decrease')),
                  ElevatedButton(
                      onPressed: resetCounter, child: const Text('Reset'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
