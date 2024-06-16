import 'package:flutter/material.dart';

class HomeTimerButtons extends StatelessWidget {
  final VoidCallback onStartPressed;
  final VoidCallback onStopPressed;
  final VoidCallback onReturnPressed;


  const HomeTimerButtons(
      {super.key, required this.onStartPressed, required this.onStopPressed, required this.onReturnPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onReturnPressed,
          icon: const Icon(Icons.restart_alt_sharp, size: 50),
        ),
        const SizedBox(width: 15),

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
