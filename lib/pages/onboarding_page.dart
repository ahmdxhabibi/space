import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/onboarding_items.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: CarouselSlider(
                  items: [
                OnboardingItems(
                  imageUrl: 'assets/onboarding_bg1.png',
                  title: 'Buy Furniture Easily',
                  desciption:
                      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse',
                ),
                OnboardingItems(
                  imageUrl: 'assets/onboarding_bg2.png',
                  title: 'Fast Delivery',
                  desciption:
                      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse',
                ),
                OnboardingItems(
                  imageUrl: 'assets/onboarding_bg3.png',
                  title: 'Best Price',
                  desciption:
                      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse',
                ),
              ],
                  options: CarouselOptions(
                      height: double.infinity,
                      viewportFraction: 1,
                      enableInfiniteScroll: false))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'SKIP',
                        style: blackTextStyle.copyWith(fontSize: 18),
                      )),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: blackColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: lineDarkColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: lineDarkColor),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'NEXT',
                        style: blackTextStyle.copyWith(fontSize: 18),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
