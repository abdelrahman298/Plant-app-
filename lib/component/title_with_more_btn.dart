import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final void Function()? pressed;

  const TitleWithMoreBtn({
    required this.title,
    required this.pressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomeUnderline(
            title: title,
          ),
          const Spacer(),
          Container(
            width: 70,
            height: 35,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(36.0),
              color: kPrimaryColor,
            ),
            child: TextButton(
              onPressed: pressed,
              child: const Text(
                'More',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomeUnderline extends StatelessWidget {
  final String title;
  const TitleWithCustomeUnderline({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 3.0,
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.3),
              ),
            ),
          )
        ],
      ),
    );
  }
}
