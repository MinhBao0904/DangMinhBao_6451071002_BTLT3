import 'package:flutter/material.dart';
import '../views/custom_slider_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomSliderView(),
    );
  }
}