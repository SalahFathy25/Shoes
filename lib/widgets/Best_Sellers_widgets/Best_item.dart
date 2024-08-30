// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/screens/details_screen.dart';

class BestItem extends StatelessWidget {
  const BestItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.Container1,
    required this.Container2,
  });

  final String image;
  final String title;
  final String price;
  final Color Container1;
  final Color Container2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const DetailsScreen(),
          ),
        );
      },
      child: Container(
        width: 170,
        height: 280,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    image,
                    width: 145,
                    height: 145,
                  ),
                  const Text(
                    'Best Seller',
                    style: TextStyle(
                      color: Color(0xff5B9EE1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xff1A2530),
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  const Text(
                    'Men\'s Shoes',
                    style: TextStyle(
                      color: Color(0xff707B81),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          color: Color(0xff1A2530),
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                color: Container1,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                color: Container2,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
