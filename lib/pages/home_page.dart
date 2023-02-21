import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/home_category_items.dart';
import 'package:space/widgets/home_popular_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categoryIndex = 0;
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
            if (value == 1) {
              Navigator.pushNamed(context, '/wishlist');
            } else if (value == 2) {
              Navigator.pushNamed(context, '/profile');
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

            // SEARCH BAR
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/search');
              },
              child: Container(
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
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(24, 30, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: semiBold),
                  ),
                  Text(
                    'Show All',
                    style: blackTextStyle,
                  )
                ],
              ),
            ),
            // NOTE: CATEGORY
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: CarouselSlider(
                items: [
                  HomeCategoryItems(
                      title: 'Minimalis Chair',
                      subtitle: 'Chair',
                      imageUrl: 'assets/image_category1.png'),
                  HomeCategoryItems(
                      title: 'Minimalis Table',
                      subtitle: 'Table',
                      imageUrl: 'assets/image_category2.png'),
                  HomeCategoryItems(
                      title: 'Minimalis Chair',
                      subtitle: 'Chair',
                      imageUrl: 'assets/image_category3.png'),
                ],
                options: CarouselOptions(
                    height: 140,
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                    onPageChanged: (value, _) {
                      setState(() {
                        categoryIndex = value;
                      });
                    }),
              ),
            ),
            // NOTE: SCROLL INDICATOR
            Container(
              margin: const EdgeInsets.only(top: 13, left: 24, right: 24),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: categoryIndex == 0 ? blackColor : lineDarkColor),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: categoryIndex == 1 ? blackColor : lineDarkColor),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: categoryIndex == 2 ? blackColor : lineDarkColor),
                  ),
                ],
              ),
            ),
            // NOTE: POPULAR
            Container(
              margin: const EdgeInsets.only(top: 24),
              decoration: const BoxDecoration(
                  color: whiteColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular',
                          style: blackTextStyle.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                        ),
                        Text(
                          'Show All',
                          style: blackTextStyle,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 310,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          HomePopularItems(
                              title: 'Poan Chair',
                              imageUrl: 'assets/image_popular1.png',
                              price: 45,
                              isWishlist: true),
                          HomePopularItems(
                              title: 'Poan Chair',
                              imageUrl: 'assets/image_popular2.png',
                              price: 37,
                              isWishlist: false),
                          HomePopularItems(
                              title: 'Poan Chair',
                              imageUrl: 'assets/image_popular3.png',
                              price: 28,
                              isWishlist: false),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
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
