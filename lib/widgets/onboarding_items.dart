import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class OnboardingItems extends StatelessWidget {
  const OnboardingItems(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.desciption});

  final String imageUrl, title, desciption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Image.asset(imageUrl),
        const SizedBox(
          height: 127,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 26,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(desciption,
              textAlign: TextAlign.center,
              style: whiteTextStyle.copyWith(
                color: const Color(0xff999999),
                fontSize: 18,
              )),
        ),
      ],
    );
  }
}
