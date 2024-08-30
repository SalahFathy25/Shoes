import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_ecommerce_app/components/AddFavoriteEvent.dart';
import 'package:shoes_ecommerce_app/components/FavoriteBloc.dart';

import '../../screens/details_screen.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailsScreen(),
          ),
        );
      },
      child: Container(
        width: 170,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Stack(
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
                  Text(
                    price,
                    style: const TextStyle(
                      color: Color(0xff1A2530),
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xff5B9EE1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      BlocProvider.of<FavoriteBloc>(context).add(
                        AddFavoriteEvent(
                          image: image,
                          title: title,
                          price: price,
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('$title added to favorites!')),
                      );
                    },
                    icon: const Icon(Icons.add),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
