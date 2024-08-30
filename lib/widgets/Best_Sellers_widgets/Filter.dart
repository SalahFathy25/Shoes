import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/widgets/Best_Sellers_widgets/GenderButton.dart';
import 'package:shoes_ecommerce_app/widgets/Best_Sellers_widgets/SizeButton.dart';

class Filter extends StatefulWidget {
  Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Gender',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff1A2530),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                GenderButton(text: 'Men', isSelected: true),
                GenderButton(text: 'Women'),
                GenderButton(text: 'Unisex'),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Size',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff1A2530),
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                SizeButton(text: 'UK 4.4'),
                SizeButton(text: 'US 5.5', isSelected: true),
                SizeButton(text: 'UK 6.5'),
                SizeButton(text: 'EU 11.5'),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Price',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff1A2530),
              ),
            ),
            SliderTheme(
              data: const SliderThemeData(
                thumbColor: Color(0xff5B9EE1),
                activeTrackColor: Color(0xff5B9EE1),
                valueIndicatorColor: Color(0xff5B9EE1),
                trackHeight: 2,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
              ),
              child: Slider(
                value: 100,
                min: 16,
                max: 350,
                divisions: 334,
                label: "\$100",
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: const Color(0xff5B9EE1)),
                child: const Text(
                  'Apply',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
