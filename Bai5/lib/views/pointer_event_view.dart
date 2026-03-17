import 'package:flutter/material.dart';

class PointerEventView extends StatefulWidget {
  const PointerEventView({super.key});

  @override
  State<PointerEventView> createState() => _PointerEventViewState();
}

class _PointerEventViewState extends State<PointerEventView> {

  double x = 0;
  double y = 0;

  void updatePosition(PointerDownEvent event) {
    setState(() {
      x = event.localPosition.dx;
      y = event.localPosition.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pointer Event Demo'),
        centerTitle: true,
      ),
      body: Column(
        children: [

          const SizedBox(height: 20),

          Text(
            'X: ${x.toStringAsFixed(1)}, Y: ${y.toStringAsFixed(1)}',
            style: const TextStyle(fontSize: 18),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: Listener(
              onPointerDown: updatePosition,
              child: Container(
                width: double.infinity,
                color: Colors.grey[300],
                child: const Center(
                  child: Text('Tap anywhere here'),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}