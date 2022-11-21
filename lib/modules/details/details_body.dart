import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

import '../../component/icon_card.dart';
import '../../component/title_with_price.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20.0),
            height: size.height * 0.8,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              vertical: kDefaultPadding * 3),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        ),
                      ),
                      // Spacer(),
                      IconCard(image: 'assets/icons/sun.svg'),
                      IconCard(image: 'assets/icons/icon_2.svg'),
                      IconCard(image: 'assets/icons/icon_3.svg'),
                      IconCard(image: 'assets/icons/icon_4.svg'),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        color: kPrimaryColor.withOpacity(0.25),
                        blurRadius: 60,
                        // spreadRadius: 1.5,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(63.0),
                      topLeft: Radius.circular(63.0),
                    ),
                    image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/img.png',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          TitleWithPrice(),
          SizedBox(width: kDefaultPadding),
          Row(
            children: [
              Container(
                height: 84,
                width: size.width / 2,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'But Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 84,
                width: size.width / 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
