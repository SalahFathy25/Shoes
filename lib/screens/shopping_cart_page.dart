import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/screens/Checkout.dart';
import 'package:shoes_ecommerce_app/screens/home_screen.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  final Color backgroundColor = const Color(0xffF8F9FA);

  final List<String> itemNames = [
    'Nike Air Max',
    'Nike Air Max 200',
    'Nike Air Max'
  ];
  final List<String> itemSizes = ['L', 'XL', 'XXL'];

  List<int> quantities = [1, 1, 1];
  final List<double> prices = [64.95, 164.95, 200.95];

  double get totalCost {
    double total = 0;
    for (int i = 0; i < prices.length; i++) {
      total += prices[i] * quantities[i];
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: quantities.length,
              itemBuilder: (context, index) {
                return _buildCartItem(
                    itemNames[index],
                    '\$${prices[index]}',
                    'assets/images/Details/small${index + 1}.png',
                    itemSizes[index],
                    index);
              },
            ),
          ),
          _buildCostSummary(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const Checkout(),
            ));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff5B9EE1),
            fixedSize: const Size(400, 55),
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: const Text(
            'Checkout',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCartItem(
      String name, String price, String imagePath, String size, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(imagePath, width: 80, height: 80),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xff1A2530),
                ),
              ),
              Text(
                'Size: $size',
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xff1A2530),
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.remove_circle, color: Colors.black87),
            onPressed: () {
              setState(
                () {
                  if (quantities[index] > 1) {
                    quantities[index]--;
                  }
                },
              );
            },
          ),
          Text(
            '${quantities[index]}',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add_circle, color: Color(0xff5B9EE1)),
            iconSize: 27,
            onPressed: () {
              setState(
                () {
                  quantities[index]++;
                },
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline_rounded, color: Colors.red),
            iconSize: 27,
            onPressed: () {
              setState(() {
                quantities.removeAt(index);
                prices.removeAt(index);
                itemNames.removeAt(index);
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCostSummary() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Subtotal',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\$${totalCost.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shopping',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\$40.90',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total Cost',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$${(totalCost + 40.90).toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
