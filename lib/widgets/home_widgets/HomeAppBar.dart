import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/screens/shopping_cart_page.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.grid_view_rounded),
            );
          },
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Store location',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Color(0xffF87265),
                ),
                Text(
                  '10th of Ramadan, Egypt',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => ShoppingCartPage(),
            ));
          },
          icon: const Icon(Icons.shopping_bag_outlined),
        ),
      ],
    );
  }
}
