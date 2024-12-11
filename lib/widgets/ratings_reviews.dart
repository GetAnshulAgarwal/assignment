import 'package:flutter/material.dart';

class RatingsAndReviewsSection extends StatelessWidget {
  const RatingsAndReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Ratings & Reviews",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Write Review",
                  style: TextStyle(color: Colors.pink, fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Overall Rating
          Center(
            child: Column(
              children: [
                const Text(
                  "4.0/5",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Icon(
                        Icons.star,
                        color: i < 4 ? Colors.pink : Colors.grey,
                        size: 20,
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  "Based on 237 Star Ratings",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Divider
          const Divider(color: Colors.grey),

          // Parameter Ratings
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 50,
            mainAxisSpacing: 25,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildCircularIndicator("Sizing", "True to Size", 4.0),
              _buildCircularIndicator("Quality", "Out of 5", 4.5),
              _buildCircularIndicator("Fit", "Out of 5", 4.1),
              _buildCircularIndicator(
                  "Would Recommend", "Total 160 Recommendations", 87.0,
                  isPercentage: true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCircularIndicator(String title, String subtitle, double value,
      {bool isPercentage = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                value: isPercentage ? value / 100 : value / 5,
                color: Colors.pink,
                backgroundColor: Colors.grey[300],
                strokeWidth: 3,
              ),
            ),
            Text(
              isPercentage ? "${value.toInt()}%" : value.toString(),
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
