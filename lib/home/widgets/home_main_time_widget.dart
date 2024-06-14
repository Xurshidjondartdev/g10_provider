import 'package:flutter/material.dart';

class HomeMainText extends StatelessWidget {
  final int time;
  const HomeMainText({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return  Text(
      '$time',
      style: const TextStyle(fontSize: 60),
    );
  }
}
