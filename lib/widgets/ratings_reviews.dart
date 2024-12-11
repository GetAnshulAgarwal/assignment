import 'package:flutter/material.dart';

class RatingsAndReviewsSection extends StatelessWidget {
  const RatingsAndReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ratings & Reviews",
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Write Review",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: screenWidth * 0.04,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Center(
            child: Column(
              children: [
                Text(
                  "4.0/5",
                  style: TextStyle(
                    fontSize: screenWidth * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Icon(
                        Icons.star,
                        color: i < 4 ? Colors.pink : Colors.grey,
                        size: screenWidth * 0.06,
                      ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  "Based on 237 Star Ratings",
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          Divider(color: Colors.grey),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: screenWidth * 0.05,
            mainAxisSpacing: screenHeight * 0.03,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildCircularIndicator("Sizing", "True to Size", 4.0, context),
              _buildCircularIndicator("Quality", "Out of 5", 4.5, context),
              _buildCircularIndicator("Fit", "Out of 5", 4.1, context),
              _buildCircularIndicator(
                  "Would Recommend", "Total 160 Recommendations", 87.0, context,
                  isPercentage: true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCircularIndicator(
      String title, String subtitle, double value, BuildContext context,
      {bool isPercentage = false}) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: screenWidth * 0.15,
              width: screenWidth * 0.15,
              child: CircularProgressIndicator(
                value: isPercentage ? value / 100 : value / 5,
                color: Colors.pink,
                backgroundColor: Colors.grey[300],
                strokeWidth: 3,
              ),
            ),
            Text(
              isPercentage ? "${value.toInt()}%" : value.toString(),
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: screenWidth * 0.03),
        Text(
          title,
          style: TextStyle(
            fontSize: screenWidth * 0.04,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: screenWidth * 0.03,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
