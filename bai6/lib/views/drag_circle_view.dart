import 'package:flutter/material.dart';
import '../models/position_model.dart';
import '../widgets/draggable_circle.dart';

class DragCircleView extends StatefulWidget {
  const DragCircleView({super.key});

  @override
  State<DragCircleView> createState() => _DragCircleViewState();
}

class _DragCircleViewState extends State<DragCircleView> {

  PositionModel position = PositionModel(x: 100, y: 200);

  void updatePosition(DragUpdateDetails details) {
    setState(() {
      position.x += details.delta.dx;
      position.y += details.delta.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag Circle Demo'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          DraggableCircle(
            x: position.x,
            y: position.y,
            onDrag: updatePosition,
          ),
        ],
      ),
    );
  }
}