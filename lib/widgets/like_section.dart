import 'package:flutter/material.dart';

class YouMightAlsoLikeSection extends StatelessWidget {
  const YouMightAlsoLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center-align the title
        children: [
          const Center(
            // Wrap the text in a Center widget to center-align it
            child: Text(
              'You Might Also Like',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Divider(
            color: Colors.pink,
            thickness: 1.0,
          ),
          const SizedBox(height: 16.0),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 0.65,
            ),
            itemCount: 8, // Adjust as needed for number of products
            itemBuilder: (context, index) {
              final productDetails = [
                {
                  'imageUrl': 'assets/imag.png',
                  'price': '₹1190',
                  'title': 'Rose Corset',
                },
                {
                  'imageUrl': 'assets/ri.png',
                  'price': '₹1190',
                  'title': 'Rose Corset',
                },
                {
                  'imageUrl': 'assets/iam.png',
                  'price': '₹1190',
                  'title': 'Rose Corset',
                },
                {
                  'imageUrl': 'assets/imag.png',
                  'price': '₹1190',
                  'title': 'Rose Corset',
                },
                {
                  'imageUrl': 'assets/imag.png',
                  'price': '₹1190',
                  'title': 'Rose Corset',
                },
                {
                  'imageUrl': 'assets/imag.png',
                  'price': '₹1190',
                  'title': 'Rose Corset',
                },
                {
                  'imageUrl': 'assets/imag.png',
                  'price': '₹1190',
                  'title': 'Rose Corset',
                },
                {
                  'imageUrl': 'assets/imag.png',
                  'price': '₹1190',
                  'title': 'Rose Corset',
                },
              ];
              return ProductCard(
                imageUrl: productDetails[index]['imageUrl']!,
                price: productDetails[index]['price']!,
                title: productDetails[index]['title']!,
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String price;
  final String title;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.price,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10.0),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      imageUrl,
                      height: 150.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 8.0,
                      right: 8.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.pink,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
