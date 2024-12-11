import 'package:flutter/material.dart';

class ProductTitleSection extends StatelessWidget {
  const ProductTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Printed Slip Dress',
            style: TextStyle(
              fontSize: screenWidth * 0.06,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '₹1434',
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: screenWidth * 0.02),
              Text(
                '₹2300',
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: screenWidth * 0.02),
              Text(
                '40% OFF',
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            'Inclusive of all taxes',
            style: TextStyle(
              color: Colors.grey,
              fontSize: screenWidth * 0.04,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            'Short slip dress made of satin, featuring a flared A-line silhouette with a printed design detail. Sleeveless with spaghetti straps for a feminine look.',
            style: TextStyle(fontSize: screenWidth * 0.04),
          ),
        ],
      ),
    );
  }
}
