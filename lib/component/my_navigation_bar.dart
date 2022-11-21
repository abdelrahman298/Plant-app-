import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/flower.svg'),
          label: 'sun',
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
            label: 'sun'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/user-icon.svg'),
            label: 'Flower')
      ],
    );
  }
}
