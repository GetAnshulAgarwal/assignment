import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String title;
  final String content;
  final int rating;
  final String customerName;
  final String verifiedBuyer;
  final int helpful;

  const ReviewCard({
    super.key,
    required this.title,
    required this.content,
    required this.rating,
    required this.customerName,
    required this.verifiedBuyer,
    required this.helpful,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: List.generate(
                  rating, (_) => const Icon(Icons.star, color: Colors.amber)),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Text(
          content,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        TextButton(
          onPressed: () {
            // Show more content
          },
          child: const Text('See more'),
        ),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$customerName, Verified Buyer, $verifiedBuyer'),
            Row(
              children: [
                const Icon(Icons.thumb_up_outlined, size: 16.0),
                const SizedBox(width: 4.0),
                Text('$helpful'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
