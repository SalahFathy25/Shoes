import 'package:flutter/material.dart';

class BigHomeItem extends StatelessWidget {
  const BigHomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BEST CHOICE',
                style: TextStyle(
                  color: Color(0xff5B9EE1),
                  fontSize: 17,
                ),
              ),
              Text(
                'Nike Air Jordan',
                style: TextStyle(
                  color: Color(0xff1A2530),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$849.69',
                style: TextStyle(
                  color: Color(0xff1A2530),
                  fontSize: 17,
                ),
              ),
            ],
          ),
          Image.asset('assets/images/home/home sheos3.png')
        ],
      ),
    );
  }
}
