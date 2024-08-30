import 'package:flutter/material.dart';

class SizeButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  SizeButton({required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        // Handle size selection
      },
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: isSelected ? const Color(0xff5B9EE1) : const Color(0xffE9EDEF),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        backgroundColor: isSelected ? Colors.blue : Colors.white,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}