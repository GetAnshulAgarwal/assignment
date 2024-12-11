import 'package:flutter/material.dart';

class ProductColorSizeSelector extends StatefulWidget {
  const ProductColorSizeSelector({super.key});

  @override
  _ProductColorSizeSelectorState createState() =>
      _ProductColorSizeSelectorState();
}

class _ProductColorSizeSelectorState extends State<ProductColorSizeSelector> {
  String selectedSize = 'M';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'COLOR: Persian Rose',
            style: TextStyle(
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.pink,
                radius: screenWidth * 0.07,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: screenWidth * 0.05,
                ),
              ),
              SizedBox(width: screenWidth * 0.04),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: screenWidth * 0.07,
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'SIZE: Medium',
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'SIZE GUIDE',
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.w400,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: ['XS', 'S', 'M', 'L', 'XL']
                .map(
                  (size) => Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedSize = size;
                        });
                      },
                      child: Container(
                        width: screenWidth * 0.1,
                        height: screenWidth * 0.1,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: selectedSize == size
                                ? Colors.black
                                : Colors.grey,
                            width: selectedSize == size ? 2 : 1,
                          ),
                        ),
                        child: Text(
                          size,
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
