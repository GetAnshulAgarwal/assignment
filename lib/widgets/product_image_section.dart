import 'package:flutter/material.dart';

class ProductImageSection extends StatefulWidget {
  const ProductImageSection({super.key});

  @override
  _ProductImageSectionState createState() => _ProductImageSectionState();
}

class _ProductImageSectionState extends State<ProductImageSection> {
  int currentIndex = 0; // Current index for the carousel
  final List<String> images = [
    'assets/imag.png',
    'assets/imag.png',
    'assets/imag.png',
    'assets/imag.png',
  ]; // List of image assets

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Carousel (Image Slider)
        SizedBox(
          height: 400,
          child: PageView.builder(
            itemCount: images.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Image.asset(
                images[index],
                width: double.infinity,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        // Carousel Indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(images.length, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex == index ? Colors.pink : Colors.grey[300],
              ),
            );
          }),
        ),
      ],
    );
  }
}
