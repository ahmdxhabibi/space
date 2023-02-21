import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteGreyColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, '/home');
            } else if (value == 1) {
              Navigator.pushNamed(context, '/wishlist');
            }
          },
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
                  color: blueColor,
                ),
                label: 'profile'),
          ],
        ),
      ),
      // BOTTOM NAVBAR
      body: Stack(children: [
        Image.asset('assets/img_bg.png'),
        ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 70, right: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/profile.png',
                        width: 120,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Theresa Webb',
                        style: blackTextStyle.copyWith(
                            fontSize: 24, fontWeight: medium),
                      )
                    ],
                  ),
                  Container(
                    height: 44,
                    width: 88,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: whiteColor),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('assets/icons/moon_night.png')),
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
