import 'package:flutter/material.dart';
import 'package:g10_provider/home/controller/home_controller.dart';
import 'package:g10_provider/my_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomePageController(),
      child: const MyApp(),
    ),
  );
}
