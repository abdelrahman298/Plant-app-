import 'package:flutter/material.dart';

import '../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            image: 'assets/images/bottom_img_1.png',
            pressed: () {},
          ),
          FeaturedPlantCard(
            image: 'assets/images/bottom_img_2.png',
            pressed: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    required this.image,
    required this.pressed,
  });
  final String image;
  final void Function()? pressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: pressed,
      child: Container(
        height: 150,
        width: size.width * 0.8,
        margin: const EdgeInsets.only(
          top: kDefaultPadding / 2,
          left: kDefaultPadding,
          bottom: kDefaultPadding / 2,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
