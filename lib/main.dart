import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:portfolio/screen/homescreen.dart';
import 'package:portfolio/theme/apptheme.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final bool isDarkTheme =
      html.window.matchMedia('(prefers-color-scheme: dark)').matches;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Abhishek\'s portfolio',
      theme: getAppTheme(context, isDarkTheme),
      home: const HomeScreen(),
    );
  }
}
