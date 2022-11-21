import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 62,
      width: 62,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      child: SvgPicture.asset(image),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 22.0,
            color: kPrimaryColor.withOpacity(0.22),
          )
        ],
      ),
    );
  }
}
