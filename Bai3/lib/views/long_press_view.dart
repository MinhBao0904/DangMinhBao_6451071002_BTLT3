import 'package:flutter/material.dart';

class LongPressView extends StatelessWidget {
  const LongPressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Long Press Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Long press detected'),
              ),
            );
          },
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Press and hold me',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}