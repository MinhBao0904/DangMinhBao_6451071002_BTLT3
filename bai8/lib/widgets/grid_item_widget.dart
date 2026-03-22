import 'package:flutter/material.dart';
import '../models/grid_item.dart';
import '../utils/constants.dart';

class GridItemWidget extends StatelessWidget {
  final GridItem item;
  final VoidCallback onTap;

  const GridItemWidget({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: item.isSelected
              ? AppColors.selectedColor
              : AppColors.defaultColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}