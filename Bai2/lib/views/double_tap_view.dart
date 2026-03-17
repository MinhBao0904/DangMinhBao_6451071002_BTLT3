import 'package:flutter/material.dart';

class DoubleTapView extends StatefulWidget {
  const DoubleTapView({super.key});

  @override
  State<DoubleTapView> createState() => _DoubleTapViewState();
}

class _DoubleTapViewState extends State<DoubleTapView> {
  bool isBlue = true;

  void toggleColor() {
    setState(() {
      isBlue = !isBlue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Double Tap Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTap: toggleColor,
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: isBlue ? Colors.blue : Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Double Tap',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}