import 'package:flutter/material.dart';
import '../models/item_model.dart';
import '../widgets/item_tile.dart';

class DismissibleListView extends StatefulWidget {
  const DismissibleListView({super.key});

  @override
  State<DismissibleListView> createState() => _DismissibleListViewState();
}

class _DismissibleListViewState extends State<DismissibleListView> {

  List<ItemModel> items = [
    ItemModel(title: 'Item 1'),
    ItemModel(title: 'Item 2'),
    ItemModel(title: 'Item 3'),
    ItemModel(title: 'Item 4'),
  ];

  void removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipe to Delete'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index].title),
            direction: DismissDirection.endToStart, // chỉ kéo sang trái
            onDismissed: (direction) {
              removeItem(index);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${items.length + 1} deleted'),
                ),
              );
            },

            // Background khi kéo
            background: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              color: Colors.red,
              child: const Icon(Icons.delete, color: Colors.white),
            ),

            child: ItemTile(item: items[index]),
          );
        },
      ),
    );
  }
}