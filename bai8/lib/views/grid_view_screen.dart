import 'package:flutter/material.dart';
import '../models/grid_item.dart';
import '../widgets/grid_item_widget.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  List<GridItem> items = List.generate(9, (index) => GridItem());

  void toggleItem(int index) {
    setState(() {
      items[index].isSelected = !items[index].isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid Gesture Demo')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return GridItemWidget(
            item: items[index],
            onTap: () => toggleItem(index),
          );
        },
      ),
    );
  }
}