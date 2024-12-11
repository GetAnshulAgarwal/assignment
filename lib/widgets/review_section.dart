import 'package:flutter/material.dart';

class ReviewPhotosSection extends StatelessWidget {
  const ReviewPhotosSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          const SizedBox(height: 25.0),
          const Text(
            'Review Photos(150)',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 120,
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
            height: 30.0,
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
    return Container(
      width: 100,
      height: 100,
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
