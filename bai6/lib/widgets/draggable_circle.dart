import 'package:flutter/material.dart';

class DraggableCircle extends StatelessWidget {
  final double x;
  final double y;
  final Function(DragUpdateDetails) onDrag;

  const DraggableCircle({
    super.key,
    required this.x,
    required this.y,
    required this.onDrag,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: x,
      top: y,
      child: GestureDetector(
        onPanUpdate: onDrag,
        child: Container(
          width: 80,
          height: 80,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}