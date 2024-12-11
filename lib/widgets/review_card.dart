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
                title,
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: List.generate(
                  rating,
                  (_) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: screenWidth * 0.06,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Text(
            content,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: screenWidth * 0.04,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'See more',
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$customerName, Verified Buyer, $verifiedBuyer',
                style: TextStyle(
                  fontSize: screenWidth * 0.035,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.thumb_up_outlined,
                    size: screenWidth * 0.04,
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Text(
                    '$helpful',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
