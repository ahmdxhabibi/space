import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/product_grid_item.dart';
import 'package:space/widgets/skeleton_items.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  bool isLoading = true;
  bool isShowGrid = true;

// void @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteGreyColor,
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: AppBar(
            elevation: 0,
            backgroundColor: whiteColor,
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Wishlist',
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 18),
                ),
                Spacer(),
                Image.asset(
                  'assets/icons/search.png',
                  color: blackColor,
                  width: 24,
                ),
              ],
            ),
          )),
      // APP BAR
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, '/home');
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
                  color: blueColor,
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
      // BOTTOM NAVBAR
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 30,
          ),
          isLoading ? buildLoading() : buildGrid()
        ],
      ),
    );
  }

  Widget buildLoading() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        const SkeletonItems(),
        const SkeletonItems(),
        const SkeletonItems(),
        const SkeletonItems(),
        const SkeletonItems(),
        const SkeletonItems(),
        const SkeletonItems(),
        const SkeletonItems(),
      ],
    );
  }

  Widget buildGrid() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        const ProductGridItem(
          title: 'White Poan Chair',
          imageUrl: 'assets/image_search1.png',
          price: 21,
          isWishlist: true,
        ),
        const ProductGridItem(
          title: 'Black Poan Chair',
          imageUrl: 'assets/image_search4.png',
          price: 41,
          isWishlist: true,
        ),
      ],
    );
  }
}
