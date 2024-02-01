import 'package:flutter/material.dart';
import 'package:plant_app/Recommended_Plants.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/featuredPlants.dart';
import 'package:plant_app/header_with_SearchBox.dart';
import 'package:plant_app/titlewith_more.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderwithSearchBox(size: size),
          TitlewithMore(title: 'Recommended', press: () {}),
          const RecommendedPlants(),
          TitlewithMore(title: 'Featured Plants', press: () {}),
          const FeaturedPlants(),
          const SizedBox(
            height: KDefaultPadding,
          )
        ],
      ),
    );
  }
}
