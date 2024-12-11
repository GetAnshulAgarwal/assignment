import 'package:flutter/material.dart';

class ProductImageSection extends StatefulWidget {
  const ProductImageSection({super.key});

  @override
  _ProductImageSectionState createState() => _ProductImageSectionState();
}

class _ProductImageSectionState extends State<ProductImageSection> {
  int currentIndex = 0;
  final List<String> images = [
    'assets/imag.png',
    'assets/imag.png',
    'assets/imag.png',
    'assets/imag.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.45,
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
                width: screenWidth,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        SizedBox(height: screenHeight * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(images.length, (index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
              width: screenWidth * 0.03,
              height: screenWidth * 0.03,
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
