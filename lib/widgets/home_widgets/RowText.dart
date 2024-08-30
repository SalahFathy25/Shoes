import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/screens/Best_Sellers_screen.dart';

class RowText extends StatelessWidget {
  const RowText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Color(0xff1A2530),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => BestSellersScreen(),));
          },
          child: const Text(
            'See all',
            style: TextStyle(
              color: Color(0xff5B9EE1),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
