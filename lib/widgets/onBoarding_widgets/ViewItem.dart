import 'package:flutter/material.dart';

class ViewItem extends StatelessWidget {
  ViewItem(
      {super.key,
      required this.image,
      required this.description,
      required this.title});
  String image;
  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        SizedBox(
          height: 300,
          child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 50,
                  right: 50,
                  child: Image.asset('assets/images/OnBoarding/NIKE.png'),
                ),
                Positioned(
                  top: -40,
                  child: Image.asset(image),
                ),
                Positioned(
                  top: 0,
                  left: 60,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: const Color(0xffA4CDF6),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100,
                  right: 30,
                  child: Container(
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                      color: const Color(0xffA4CDF6),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 30,
                  child: Container(
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                      color: const Color(0xffA4CDF6),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                )
              ],
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50 , top: 15 , bottom: 15 , left: 15),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 30,
              color: Color(0xff1A2530),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 23,
              color: Color(0xff707B81),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
