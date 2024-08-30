import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.image,
    required this.newPrice,
    required this.oldPrice,
    required this.time,
    this.showDot = false,
  });

  final String image;
  final String newPrice;
  final String oldPrice;
  final String time;
  final bool showDot;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'We Have New Products With Offers',
                  style: TextStyle(
                    color: Color(0xff1A2530),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      newPrice,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Color(0xff1A2530),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      oldPrice,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: Color(0xff707B81),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Color(0xff707B81),
                ),
              ),
              const SizedBox(height: 30),
              if (showDot)
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: const Color(0xff5B9EE1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
