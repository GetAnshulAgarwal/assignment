import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Customer Reviews(800)',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Row(
                children: List.generate(
                    4, (index) => const Icon(Icons.star, color: Colors.pink)),
              ),
              const Icon(Icons.star_border, color: Colors.pink),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Highly Recommended',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Ut aliquet venenatis elit, at condimentum mi bibendum non. Sed vitae dui quis neque fermentum tincidunt. Quisque id aliquam magna. Proin sit amet sagittis sem...',
            style: TextStyle(fontSize: 14),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See more',
              style: TextStyle(color: Colors.pink),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/rectangle4.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 100,
                height: 100,
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
          const SizedBox(height: 16),
          const Text(
            'Sofia',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.verified, size: 16, color: Colors.pink),
                  SizedBox(width: 4),
                  Text(
                    'Verified Buyer, 20th July, 2024',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Helpful?',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.thumb_up_alt_outlined,
                      size: 16, color: Colors.pink),
                  SizedBox(width: 4),
                  Text(
                    '4',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.more_vert_sharp, color: Colors.black),
                ],
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Row(
                children: List.generate(
                    4, (index) => const Icon(Icons.star, color: Colors.pink)),
              ),
              const Icon(Icons.star_border, color: Colors.pink),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Nice Buy',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis  tempor incididun...',
            style: TextStyle(fontSize: 14),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See more',
              style: TextStyle(color: Colors.pink),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Esther Howard',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.verified, size: 16, color: Colors.pink),
                  SizedBox(width: 4),
                  Text(
                    'Verified Buyer, 20th July, 2024',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Helpful?',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.thumb_up_alt_outlined,
                      size: 16, color: Colors.pink),
                  SizedBox(width: 4),
                  Text(
                    '3',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.more_vert_sharp, color: Colors.black),
                ],
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Row(
                children: List.generate(
                    4, (index) => const Icon(Icons.star, color: Colors.pink)),
              ),
              const Icon(Icons.star_border, color: Colors.pink),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Splendid Purchase',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis  tempor incididun..',
            style: TextStyle(fontSize: 14),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See more',
              style: TextStyle(color: Colors.pink),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Mary Magdalen,',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.verified, size: 16, color: Colors.pink),
                  SizedBox(width: 4),
                  Text(
                    'Verified Buyer, 20th July, 2024',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Helpful?',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.thumb_up_alt_outlined,
                      size: 16, color: Colors.pink),
                  SizedBox(width: 4),
                  Text(
                    '3',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.more_vert_sharp, color: Colors.black),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 12.0),
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
