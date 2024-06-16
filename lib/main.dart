import 'package:flutter/material.dart';
import 'package:g10_provider/home/controller/home_controller.dart';
import 'package:g10_provider/my_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomePageController(),
        ),
        // ChangeNotifierProvider(
        //   create: (_) => HomePageController(),
        // ),
      ],
      child: const MyApp(),
    ),
  );
}
