import 'package:flutter/material.dart';

class HomeIncrementButtons extends StatelessWidget {
  final VoidCallback onIncrementPressed;
  final VoidCallback onDecrementPressed;
  const HomeIncrementButtons({super.key, required this.onIncrementPressed, required this.onDecrementPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: onIncrementPressed,
          tooltip: 'Increment',
          child: const Icon(Icons.plus_one),
        ),
        const SizedBox(
          height: 20,
        ),
        FloatingActionButton(
          onPressed: onDecrementPressed,
          tooltip: 'Decrement',
          child: const Icon(Icons.exposure_minus_1),
        ),
      ],
    );
  }
}
