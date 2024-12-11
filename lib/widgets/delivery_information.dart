import 'package:flutter/material.dart';

class DeliverySection extends StatelessWidget {
  const DeliverySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Delivery Address Input
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "DELIVER TO: Mumbai",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "4000001",
                  border: const OutlineInputBorder(),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  suffixIcon: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // Rectangular shape
                      ),
                    ),
                    child: const Text(
                      "CHECK",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Cash On Delivery and Standard Delivery
          const Row(
            children: [
              Icon(Icons.credit_card, size: 18, color: Colors.grey),
              SizedBox(width: 8),
              Text("Cash On Delivery Available",
                  style: TextStyle(fontSize: 14)),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Icon(Icons.local_shipping, size: 18, color: Colors.grey),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Standard Delivery:",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Free Shipping on this product. Save ₹99\nEstimated Delivery by Tue, 26 Mar - Thu 28 Mar",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(color: Colors.grey),

          // Collapsible Sections
          _buildCollapsibleSection("About the Product"),
          const Divider(color: Colors.grey),
          _buildCollapsibleSection("Wash Care Instructions"),
          const Divider(color: Colors.grey),
          _buildCollapsibleSection("Service & Policy"),
          const Divider(color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildCollapsibleSection(String title) {
    return ExpansionTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
