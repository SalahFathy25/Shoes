import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/screens/Login&SignUp/Login.dart';
import 'package:shoes_ecommerce_app/widgets/onBoarding_widgets/CustomButton.dart';
import 'package:shoes_ecommerce_app/widgets/onBoarding_widgets/CustomPageView.dart';
import 'package:shoes_ecommerce_app/widgets/onBoarding_widgets/Customindicator.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(pageController: pageController!),
        Positioned(
          bottom: 35,
          left: 30,
          right: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Customindicator(
                dotIndex: pageController!.hasClients
                    ? pageController?.page?.toInt() ?? 0
                    : 0,
              ),
              FutureBuilder(
                future: Future.value(true),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    int currentPage = pageController?.page?.toInt() ?? 0;
                    return CustomButton(
                      onTap: () {
                        if (pageController!.page! < 2) {
                          pageController!.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        }
                      },
                      text: currentPage == 2 ? 'Get Started' : 'Next -->',
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
