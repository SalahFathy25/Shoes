import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/screens/home_screen.dart';
import 'package:shoes_ecommerce_app/widgets/Notification_widgets/Notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  final Color backgroundColor = const Color(0xffF8F9FA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildBackButton(context),
            const Text(
              'Notifications',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const Text(
              'Clear All',
              style: TextStyle(
                color: Color(0xff5B9EE1),
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today',
              style: TextStyle(
                color: Color(0xff1A2530),
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            NotificationItem(
              image: 'assets/images/Notification/Notification1.png',
              newPrice: '\$400.00',
              oldPrice: '\$500.00',
              time: '6 min ago',
              showDot: true,
            ),
            NotificationItem(
              image: 'assets/images/Notification/Notification2.png',
              newPrice: '\$350.00',
              oldPrice: '\$400.00',
              time: '25 min ago',
              showDot: true,
            ),
            Text(
              'Yesterday',
              style: TextStyle(
                color: Color(0xff1A2530),
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            NotificationItem(
              image: 'assets/images/Notification/Notification3.png',
              newPrice: '\$400.00',
              oldPrice: '\$500.00',
              time: '4 day ago',
            ),
            NotificationItem(
              image: 'assets/images/Notification/Notification4.png',
              newPrice: '\$350.00',
              oldPrice: '\$400.00',
              time: '5 day ago',
            ),
          ],
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
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
        icon: const Icon(Icons.arrow_back_ios_new),
        iconSize: 20,
      ),
    );
  }
}
