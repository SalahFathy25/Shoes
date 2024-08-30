import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  GenderButton({required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: isSelected ? Colors.white : Colors.black,
            backgroundColor: isSelected ? const Color(0xff5B9EE1) : const Color(0xffE9EDEF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding:const EdgeInsets.symmetric(vertical: 12),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
