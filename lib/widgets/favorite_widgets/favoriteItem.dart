import 'package:flutter/material.dart';

class FavoriteItem extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final Color favoriteColor;
  final Color container1;
  final Color container2;

  const FavoriteItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.favoriteColor,
    required this.container1,
    required this.container2,
  });

  @override
  // ignore: library_private_types_in_public_api
  _FavoriteItemState createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  final Color backgroundColor = const Color(0xffF8F9FA);

  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 270,
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
                Stack(
                  children: [
                    Image.asset(
                      widget.image,
                      width: 170,
                      height: 170,
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorited = !isFavorited;
                            });
                          },
                          icon: Icon(
                            isFavorited
                                ? Icons.favorite
                                : Icons.favorite_border_rounded,
                          ),
                          color: isFavorited
                              ? widget.favoriteColor
                              : widget.favoriteColor,
                        ),
                      ),
                    )
                  ],
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
                  widget.title,
                  style: const TextStyle(
                    color: Color(0xff1A2530),
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.price,
                        style: const TextStyle(
                          color: Color(0xff1A2530),
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: widget.container1,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: widget.container2,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      )
                    ],
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
