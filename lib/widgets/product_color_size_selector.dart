import 'package:flutter/material.dart';

class ProductColorSizeSelector extends StatefulWidget {
  const ProductColorSizeSelector({super.key});

  @override
  _ProductColorSizeSelectorState createState() =>
      _ProductColorSizeSelectorState();
}

class _ProductColorSizeSelectorState extends State<ProductColorSizeSelector> {
  String selectedSize = 'M'; // Default selected size

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'COLOR: Persian Rose',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 15,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 18, // Adjust the size of the tick as needed
                ),
              ),
              SizedBox(width: 8),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 15,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'SIZE: Medium',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const Spacer(), // This will push the SIZE GUIDE to the far end
              GestureDetector(
                onTap: () {
                  // Add your onTap functionality here
                },
                child: const Text(
                  'SIZE GUIDE',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors
                        .pinkAccent, // Adjust the color to match your theme
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: ['XS', 'S', 'M', 'L', 'XL']
                .map(
                  (size) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedSize = size; // Update selected size on tap
                        });
                      },
                      child: Container(
                        width: 40, // Square dimensions
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white38, // Default background
                          borderRadius: BorderRadius.circular(
                              4), // Slightly rounded corners
                          border: Border.all(
                            color: selectedSize == size
                                ? Colors.black
                                : Colors.grey, // Highlight selected border
                            width: selectedSize == size
                                ? 2
                                : 1, // Thicker border for selected
                          ),
                        ),
                        child: Text(
                          size,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black, // Black text
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
