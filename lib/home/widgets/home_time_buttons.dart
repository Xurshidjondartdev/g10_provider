import 'package:flutter/material.dart';

class HomeTimerButtons extends StatelessWidget {
  final VoidCallback onStartPressed;
  final VoidCallback onStopPressed;

  const HomeTimerButtons(
      {super.key, required this.onStartPressed, required this.onStopPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onStopPressed,
          icon: const Icon(Icons.stop_circle, size: 50),
        ),
        const SizedBox(width: 15),
        IconButton(
          onPressed: onStartPressed,
          icon: const Icon(Icons.play_circle, size: 50),
        ),
      ],
    );
  }
}
