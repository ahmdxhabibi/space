import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/profile_menu_item.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isLightMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isLightMode ? whiteGreyColor : Color(0xff1F1D2B),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          backgroundColor: isLightMode ? null : darkColor,
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
                  color: isLightMode ? null : whiteColor,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/favorite.png',
                  width: 24,
                  color: isLightMode ? null : whiteColor,
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
        Image.asset(
          'assets/img_bg.png',
          color: isLightMode ? null : Color(0xffD8D8D8),
        ),
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
                            fontSize: 24,
                            fontWeight: medium,
                            color: isLightMode ? null : whiteColor),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLightMode = !isLightMode;
                      });
                    },
                    child: Container(
                      height: 44,
                      width: 88,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: isLightMode ? whiteColor : darkColor),
                      child: AnimatedAlign(
                          duration: Duration(milliseconds: 300),
                          alignment: isLightMode
                              ? Alignment.centerLeft
                              : Alignment.centerRight,
                          child: Image.asset(isLightMode
                              ? 'assets/icons/moon_night.png'
                              : 'assets/icons/sun_light.png')),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 32,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(36),
                  ),
                  color: isLightMode ? whiteColor : darkColor),
              child: Column(
                children: [
                  ProfileMenuItem(
                    iconUrl: 'assets/icons/person.png',
                    title: 'My Profile',
                    isLightMode: isLightMode,
                  ),
                  ProfileMenuItem(
                    iconUrl: 'assets/icons/map.png',
                    title: 'My Address',
                    isLightMode: isLightMode,
                  ),
                  ProfileMenuItem(
                    iconUrl: 'assets/icons/shopping-bag.png',
                    title: 'My Order',
                    isLightMode: isLightMode,
                  ),
                  ProfileMenuItem(
                    iconUrl: 'assets/icons/credit-card.png',
                    title: 'Payment Method',
                    isLightMode: isLightMode,
                  ),
                  ProfileMenuItem(
                    iconUrl: 'assets/icons/favorite.png',
                    title: 'My Wishlist',
                    isLightMode: isLightMode,
                  ),
                  ProfileMenuItem(
                    iconUrl: 'assets/icons/question-mark-circle.png',
                    title: 'Frequently Asked Questions',
                    isLightMode: isLightMode,
                  ),
                  ProfileMenuItem(
                    iconUrl: 'assets/icons/headphones.png',
                    title: 'Customer Care',
                    isLightMode: isLightMode,
                  ),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
