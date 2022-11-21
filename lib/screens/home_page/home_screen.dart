import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

import '../../component/featured_plants.dart';
import '../../component/header_with_search_bar.dart';
import '../../component/my_navigation_bar.dart';
import '../../component/recommend_plants.dart';
import '../../component/title_with_more_btn.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it will proovie us the total height of screens
    Size size = MediaQuery.of(context).size;
    TextEditingController textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
        elevation: 0.0,
      ),
      bottomNavigationBar: MyNavigationBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            HeaderWithSearchBar(textController: textController),
            TitleWithMoreBtn(title: 'Recommended', pressed: () {}),
            RecommendPlants(),
            TitleWithMoreBtn(title: 'Featured Plants', pressed: () {}),
            FeaturedPlants(),
            SizedBox(
              height: kDefaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}
