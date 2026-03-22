import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final double value; // 0 -> 100
  final Function(double) onChanged;

  const CustomSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    double sliderWidth = MediaQuery.of(context).size.width - 40;
    double knobPosition = (value / 100) * sliderWidth;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      child: Stack(
        children: [
          // Thanh nền
          Positioned(
            top: 25,
            child: Container(
              width: sliderWidth,
              height: 6,
              color: Colors.grey[300],
            ),
          ),

          // Thanh đã kéo
          Positioned(
            top: 25,
            child: Container(
              width: knobPosition,
              height: 6,
              color: Colors.blue,
            ),
          ),

          // Nút tròn kéo
          Positioned(
            left: knobPosition - 10,
            top: 15,
            child: GestureDetector(
              onPanUpdate: (details) {
                double newPos = knobPosition + details.delta.dx;

                if (newPos < 0) newPos = 0;
                if (newPos > sliderWidth) newPos = sliderWidth;

                double newValue = (newPos / sliderWidth) * 100;
                onChanged(newValue);
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}