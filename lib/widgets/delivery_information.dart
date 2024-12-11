import 'package:flutter/material.dart';

class DeliverySection extends StatelessWidget {
  const DeliverySection({super.key});

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "DELIVER TO: Mumbai",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: screenWidth * 0.04),
              ),
              SizedBox(height: screenHeight * 0.02),
              TextField(
                decoration: InputDecoration(
                  hintText: "4000001",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.01,
                    horizontal: screenWidth * 0.02,
                  ),
                  suffixIcon: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: Text(
                      "CHECK",
                      style: TextStyle(
                          color: Colors.white, fontSize: screenWidth * 0.035),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.03),
          Row(
            children: [
              Icon(Icons.credit_card,
                  size: 18 * textScaleFactor, color: Colors.grey),
              SizedBox(width: screenWidth * 0.02),
              Text(
                "Cash On Delivery Available",
                style: TextStyle(fontSize: screenWidth * 0.035),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            children: [
              Icon(Icons.local_shipping,
                  size: 18 * textScaleFactor, color: Colors.grey),
              SizedBox(width: screenWidth * 0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Standard Delivery:",
                    style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Free Shipping on this product. Save ₹99\nEstimated Delivery by Tue, 26 Mar - Thu 28 Mar",
                    style: TextStyle(
                        fontSize: screenWidth * 0.03, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Divider(color: Colors.grey),
          _buildCollapsibleSection("About the Product"),
          Divider(color: Colors.grey),
          _buildCollapsibleSection("Wash Care Instructions"),
          Divider(color: Colors.grey),
          _buildCollapsibleSection("Service & Policy"),
          Divider(color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildCollapsibleSection(String title) {
    return ExpansionTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Details about $title.",
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
