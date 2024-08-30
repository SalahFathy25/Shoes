import 'package:flutter/material.dart';

class Logos extends StatelessWidget {
  const Logos({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xff5B9EE1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/logos/Nike_Logo.png',
                  width: 40,
                  height: 40,
                ),
                const Text(
                  'Nike',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            'assets/images/logos/Puma_Logo.png',
            width: 60,
            height: 60,
          ),
          Image.asset(
            'assets/images/logos/Under_Armour_logo.png',
            width: 60,
            height: 60,
          ),
          Image.asset(
            'assets/images/logos/adidas_Logo.png',
            width: 60,
            height: 60,
          ),
          Image.asset(
            'assets/images/logos/Converse_Logo.png',
            width: 60,
            height: 60,
          ),
        ],
      ),
    );
  }
}
