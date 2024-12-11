import 'package:flutter/material.dart';

class ProductTitleSection extends StatelessWidget {
  const ProductTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Printed Slip Dress',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '₹1434',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(width: 8),
              Text(
                '₹2300',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 8),
              Text(
                '40% OFF',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Inclusive of all taxes',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(height: 8),
          Text(
            'Short slip dress made of satin, featuring a flared A-line silhouette with a printed design detail. Sleeveless with spaghetti straps for a feminine look.',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
