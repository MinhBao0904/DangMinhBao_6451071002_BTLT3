import 'package:flutter/material.dart';

class TapCounterView extends StatefulWidget {
  const TapCounterView({super.key});

  @override
  State<TapCounterView> createState() => _TapCounterViewState();
}

class _TapCounterViewState extends State<TapCounterView> {

  int count = 0;

  void increaseCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              'Tap count: $count',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: increaseCount,
              child: const Text('Tap Here'),
            ),

          ],
        ),
      ),
    );
  }
}