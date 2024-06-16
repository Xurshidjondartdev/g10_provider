import 'package:flutter/material.dart';

class HomeMainTextWidget extends StatelessWidget {
  final int counter;
  final int countDown;
  const HomeMainTextWidget(
      {super.key, required this.counter, required this.countDown});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 45),
        const Text(
          'Counter',
          style: TextStyle(fontSize: 35),
        ),
        Text(
          '$counter',
          style: const TextStyle(fontSize: 45),
        ),
        const SizedBox(
          height: 45,
        ),
        const Divider(),
        const SizedBox(
          height: 45,
        ),
        const Text(
          "Timer",
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        Text(
          countDown.toString(),
          style: const TextStyle(fontSize: 35),
        ),
      ],
    );
  }
}
