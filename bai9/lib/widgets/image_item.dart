import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  final String url;

  const ImageItem({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(url),
    );
  }
}