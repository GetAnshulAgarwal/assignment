import 'package:flutter/material.dart';

class ReviewPhotosSection extends StatelessWidget {
  const ReviewPhotosSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          SizedBox(height: screenHeight * 0.03),
          Text(
            'Review Photos(150)',
            style: TextStyle(
              fontSize: screenWidth * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          SizedBox(
            height: screenHeight * 0.15,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ReviewPhoto(imagePath: 'assets/rectangle1.png'),
                SizedBox(width: 8),
                ReviewPhoto(imagePath: 'assets/rectangle2.png'),
                SizedBox(width: 8),
                ReviewPhoto(imagePath: 'assets/rectangle3.png'),
                SizedBox(width: 8),
                ReviewPhoto(imagePath: 'assets/rectangle5.png'),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
        ],
      ),
    );
  }
}

class ReviewPhoto extends StatelessWidget {
  final String imagePath;

  const ReviewPhoto({required this.imagePath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.25,
      height: screenWidth * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
