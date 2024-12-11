import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double fontSize = width < 600 ? 14 : 16;

    return Padding(
      padding: EdgeInsets.all(width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Customer Reviews(800)',
            style: TextStyle(
              fontSize: fontSize * 1.25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.01),
          Row(
            children: [
              Row(
                children: List.generate(
                    4, (index) => const Icon(Icons.star, color: Colors.pink)),
              ),
              const Icon(Icons.star_border, color: Colors.pink),
            ],
          ),
          SizedBox(height: height * 0.01),
          Text(
            'Highly Recommended',
            style: TextStyle(
              fontSize: fontSize * 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.01),
          Text(
            'Ut aliquet venenatis elit, at condimentum mi bibendum non. Sed vitae dui quis neque fermentum tincidunt. Quisque id aliquam magna. Proin sit amet sagittis sem...',
            style: TextStyle(fontSize: fontSize),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See more',
              style: TextStyle(color: Colors.pink),
            ),
          ),
          SizedBox(height: height * 0.02),
          Row(
            children: [
              Container(
                width: width * 0.2,
                height: width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/rectangle4.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: width * 0.02),
              Container(
                width: width * 0.2,
                height: width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/rectangle3.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          Text(
            'Sofia',
            style: TextStyle(
              fontSize: fontSize * 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.verified, size: 16, color: Colors.pink),
                  SizedBox(width: width * 0.02),
                  Text(
                    'Verified Buyer, 20th July, 2024',
                    style: TextStyle(
                      fontSize: fontSize * 0.8,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Helpful?',
                    style:
                        TextStyle(fontSize: fontSize * 0.8, color: Colors.grey),
                  ),
                  SizedBox(width: width * 0.02),
                  const Icon(Icons.thumb_up_alt_outlined,
                      size: 16, color: Colors.pink),
                  SizedBox(width: width * 0.02),
                  Text(
                    '4',
                    style:
                        TextStyle(fontSize: fontSize * 0.8, color: Colors.grey),
                  ),
                  SizedBox(width: width * 0.02),
                  const Icon(Icons.more_vert_sharp, color: Colors.black),
                ],
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          SizedBox(height: height * 0.02),
          Row(
            children: [
              Row(
                children: List.generate(
                    4, (index) => const Icon(Icons.star, color: Colors.pink)),
              ),
              const Icon(Icons.star_border, color: Colors.pink),
            ],
          ),
          SizedBox(height: height * 0.01),
          Text(
            'Nice Buy',
            style: TextStyle(
              fontSize: fontSize * 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.01),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis  tempor incididun...',
            style: TextStyle(fontSize: fontSize),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See more',
              style: TextStyle(color: Colors.pink),
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            'Esther Howard',
            style: TextStyle(
              fontSize: fontSize * 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.verified, size: 16, color: Colors.pink),
                  SizedBox(width: width * 0.02),
                  Text(
                    'Verified Buyer, 20th July, 2024',
                    style: TextStyle(
                      fontSize: fontSize * 0.8,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Helpful?',
                    style:
                        TextStyle(fontSize: fontSize * 0.8, color: Colors.grey),
                  ),
                  SizedBox(width: width * 0.02),
                  const Icon(Icons.thumb_up_alt_outlined,
                      size: 16, color: Colors.pink),
                  SizedBox(width: width * 0.02),
                  Text(
                    '3',
                    style:
                        TextStyle(fontSize: fontSize * 0.8, color: Colors.grey),
                  ),
                  SizedBox(width: width * 0.02),
                  const Icon(Icons.more_vert_sharp, color: Colors.black),
                ],
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          SizedBox(height: height * 0.02),
          Row(
            children: [
              Row(
                children: List.generate(
                    4, (index) => const Icon(Icons.star, color: Colors.pink)),
              ),
              const Icon(Icons.star_border, color: Colors.pink),
            ],
          ),
          SizedBox(height: height * 0.01),
          Text(
            'Splendid Purchase',
            style: TextStyle(
              fontSize: fontSize * 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.01),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis  tempor incididun..',
            style: TextStyle(fontSize: fontSize),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See more',
              style: TextStyle(color: Colors.pink),
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            'Mary Magdalen,',
            style: TextStyle(
              fontSize: fontSize * 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.verified, size: 16, color: Colors.pink),
                  SizedBox(width: width * 0.02),
                  Text(
                    'Verified Buyer, 20th July, 2024',
                    style: TextStyle(
                      fontSize: fontSize * 0.8,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Helpful?',
                    style:
                        TextStyle(fontSize: fontSize * 0.8, color: Colors.grey),
                  ),
                  SizedBox(width: width * 0.02),
                  const Icon(Icons.thumb_up_alt_outlined,
                      size: 16, color: Colors.pink),
                  SizedBox(width: width * 0.02),
                  Text(
                    '3',
                    style:
                        TextStyle(fontSize: fontSize * 0.8, color: Colors.grey),
                  ),
                  SizedBox(width: width * 0.02),
                  const Icon(Icons.more_vert_sharp, color: Colors.black),
                ],
              ),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.08, vertical: height * 0.02),
                side: const BorderSide(color: Colors.black, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              child: const Text(
                'SEE ALL REVIEWS',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
