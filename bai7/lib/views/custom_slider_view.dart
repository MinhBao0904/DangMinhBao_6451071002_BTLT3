import 'package:flutter/material.dart';
import '../widgets/custom_slider.dart';

class CustomSliderView extends StatefulWidget {
  const CustomSliderView({super.key});

  @override
  State<CustomSliderView> createState() => _CustomSliderViewState();
}

class _CustomSliderViewState extends State<CustomSliderView> {

  double value = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Slider'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            'Value: ${value.toStringAsFixed(0)}',
            style: const TextStyle(fontSize: 22),
          ),

          const SizedBox(height: 40),

          CustomSlider(
            value: value,
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
            },
          ),

        ],
      ),
    );
  }
}