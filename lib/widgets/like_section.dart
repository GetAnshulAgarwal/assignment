import 'package:flutter/material.dart';

class YouMightAlsoLikeSection extends StatelessWidget {
  const YouMightAlsoLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'You Might Also Like',
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Divider(
            color: Colors.pink,
            thickness: 1.0,
          ),
          SizedBox(height: screenHeight * 0.02),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: screenWidth > 600 ? 3 : 2,
              mainAxisSpacing: screenHeight * 0.02,
              crossAxisSpacing: screenWidth * 0.04,
              childAspectRatio: screenWidth > 600 ? 0.7 : 0.65,
            ),
            itemCount: 8,
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
                      height: screenHeight * 0.2,
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
                padding: EdgeInsets.all(screenWidth * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
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
