import 'package:assignment/widgets/coustmer_review.dart';
import 'package:assignment/widgets/review_section.dart';
import 'package:flutter/material.dart';

import '../widgets/delivery_information.dart';
import '../widgets/like_section.dart';
import '../widgets/producr_title_section.dart';
import '../widgets/product_color_size_selector.dart';
import '../widgets/product_image_section.dart';
import '../widgets/ratings_reviews.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back, // Back arrow icon
            color: Colors.black, // Color of the icon
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back to the previous screen
          },
        ),
        title: const Text(
          'THAT GIRL',
          style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImageSection(),
            ProductTitleSection(),
            const ProductColorSizeSelector(),
            const DeliverySection(),
            RatingsAndReviewsSection(),
            const ReviewPhotosSection(),
            const ReviewCard(),
            YouMightAlsoLikeSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 28.0,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 12.0),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero), // Rectangular shape
              ),
              onPressed: () {},
              child: const Text(
                'ADD TO BAG',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.black),
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 12.0),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero), // Rectangular shape
              ),
              onPressed: () {},
              child: const Text(
                'BUY NOW',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
