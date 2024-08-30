import 'package:flutter/material.dart';

import 'shopping_cart_page.dart';
import 'home_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  final Color backgroundColor = const Color(0xffF8F9FA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBackButton(context),
            const Text(
              'Men\'s Shoes',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            _buildCartIcon(context),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color(0xffF8F9FA),
                child: Center(
                  child: Image.asset(
                    'assets/images/Details/Big_Image.png',
                    height: 250,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'BEST SELLER',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Nike Air Jordan',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '\$967.800',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GalleryItem('assets/images/Details/small1.png'),
                  GalleryItem('assets/images/Details/small2.png'),
                  GalleryItem('assets/images/Details/small3.png'),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Size',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [38, 39, 40, 41, 42, 43]
                    .map((size) =>
                        SizeOption(size: size, isSelected: size == 40))
                    .toList(),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$967.800',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShoppingCartPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff5B9EE1),
                  fixedSize: const Size(400, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'Add To Cart',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
        },
        icon: const Icon(Icons.arrow_back_ios_new),
        iconSize: 20,
      ),
    );
  }

  Widget _buildCartIcon(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ShoppingCartPage(),
            ),
          );
        },
        icon: const Icon(Icons.shopping_bag_outlined),
        iconSize: 23,
      ),
    );
  }
}

class GalleryItem extends StatelessWidget {
  final String imagePath;
  const GalleryItem(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(imagePath, width: 110),
    );
  }
}

class SizeOption extends StatelessWidget {
  final int size;
  final bool isSelected;

  const SizeOption({super.key, required this.size, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor:
          isSelected ? const Color(0xff5B9EE1) : const Color(0xffF8F9FA),
      child: Text(
        '$size',
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
