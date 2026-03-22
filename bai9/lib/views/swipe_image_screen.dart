import 'package:flutter/material.dart';
import '../utils/constants.dart';

class SwipeImageScreen extends StatefulWidget {
  const SwipeImageScreen({super.key});

  @override
  State<SwipeImageScreen> createState() => _SwipeImageScreenState();
}

class _SwipeImageScreenState extends State<SwipeImageScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe Image (${currentIndex + 1}/3)'),
        centerTitle: true,
      ),
      body: PageView.builder(
        controller: _controller,
        itemCount: AppImages.images.length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          return Center(
            child: Image.network(
              AppImages.images[index],
              fit: BoxFit.cover,

              // 🔄 Loading khi đang tải ảnh
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },

              // ❌ Khi lỗi mạng / không load được ảnh
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Text(
                    'Không load được ảnh',
                    style: TextStyle(fontSize: 18),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}