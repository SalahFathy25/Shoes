import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/widgets/onBoarding_widgets/ViewItem.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        ViewItem(
          image: "assets/images/OnBoarding/onBoarding1.png",
          title: "Start Journey With Nike ",
          description: "Smart, Gorgeous & Fashionable Collection",
        ),
        ViewItem(
          image: "assets/images/OnBoarding/onBoarding2_1.png",
          title: "Follow Latest Style Shoes ",
          description:
              "There Are Many Beautiful And Attractive Plants To Your Room",
        ),
        ViewItem(
          image: "assets/images/OnBoarding/onBoarding3.png",
          title: "Follow Latest Style Shoes ",
          description:
              "There Are Many Beautiful And Attractive Plants To Your Room",
        ),
      ],
    );
  }
}
