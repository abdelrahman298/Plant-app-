import 'package:flutter/material.dart';

import '../constants.dart';
import '../modules/details/details_screen.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            pressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
            size: size,
            text: 'samantha',
            imagePath: 'assets/images/image_1.png',
            country: 'russia',
            price: 700,
          ),
          RecommendPlantCard(
            pressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
            size: size,
            text: 'Rose',
            imagePath: 'assets/images/image_2.png',
            country: 'Egypt',
            price: 500,
          ),
          RecommendPlantCard(
            pressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
            size: size,
            text: 'flower',
            imagePath: 'assets/images/image_3.png',
            country: 'Canada',
            price: 400,
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    required this.size,
    required this.imagePath,
    required this.text,
    required this.country,
    required this.price,
    this.pressed,
  });

  final Size size;
  final String imagePath;
  final String text, country;
  final int price;
  final void Function()? pressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      child: Column(
        children: [
          Image.asset(imagePath),
          GestureDetector(
            onTap: pressed,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50.0,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$text\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
