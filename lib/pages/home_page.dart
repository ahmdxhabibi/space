import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteGreyColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home.png',
                  width: 24,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/favorite.png',
                  width: 24,
                ),
                label: 'wishlist'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/person.png',
                  width: 24,
                ),
                label: 'profile'),
          ],
        ),
      ),
      body: Stack(children: [
        Image.asset('assets/img_bg.png'),
        ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 24),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Image.asset(
                    'assets/logo_dark.png',
                    width: 53,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Space',
                    style:
                        blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/icons/shopping_cart.png',
                    width: 30,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14), color: whiteColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search Funiture',
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  Image.asset(
                    'assets/icons/search.png',
                    width: 24,
                    color: greyColor,
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
