import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedplantCard(
            image: 'assets/images/img2.jpg',
            tittle: 'SAMANTHA',
            country: 'RUSSIA',
            press: () {},
            price: 440,
          ),
          RecommendedplantCard(
            image: 'assets/images/img3.jpg',
            tittle: 'ANJELICA',
            country: 'SPAIN',
            press: () {},
            price: 320,
          ),
          RecommendedplantCard(
            image: 'assets/images/img4.jpg',
            tittle: 'DRACAENA ',
            country: 'CALIFORNIA',
            press: () {},
            price: 590,
          ),
        ],
      ),
    );
  }
}

class RecommendedplantCard extends StatelessWidget {
  const RecommendedplantCard({
    super.key,
    required this.image,
    required this.tittle,
    required this.country,
    required this.price,
    required this.press,
  });
  final String image, tittle, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: KDefaultPadding,
          top: KDefaultPadding / 2,
          bottom: KDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(
            image,
          ),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: const EdgeInsets.all(KDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$tittle\n",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        TextSpan(
                            text: '$country',
                            style: const TextStyle(
                              fontSize: 12,
                              color: kPrimaryColor,
                            ))
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: kPrimaryColor,
                        ),
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
