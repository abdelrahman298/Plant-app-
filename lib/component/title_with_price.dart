import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithPrice extends StatelessWidget {
  const TitleWithPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Angilena\n'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                TextSpan(
                  text: 'russia'.toUpperCase(),
                  style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5), fontSize: 25.0),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            '\$4600',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
