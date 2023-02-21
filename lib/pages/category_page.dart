import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/home_category_items.dart';
import 'package:space/widgets/product_grid_item.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

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
                  'Chair',
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 18),
                ),
                Spacer(),
                Image.asset(
                  'assets/icons/search.png',
                  color: blackColor,
                  width: 24,
                ),
                SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/icons/filter.png',
                  width: 24,
                ),
              ],
            ),
          )),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 10,
          ),
          HomeCategoryItems(
              title: 'Minimalis Chair',
              subtitle: 'Chair',
              imageUrl: 'assets/image_category1.png'),
          SizedBox(
            height: 24,
          ),
          Wrap(
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
                title: 'Blue Poan Chair',
                imageUrl: 'assets/image_search2.png',
                price: 23,
                isWishlist: false,
              ),
              const ProductGridItem(
                title: 'Grey Poan Chair',
                imageUrl: 'assets/image_search3.png',
                price: 22,
                isWishlist: false,
              ),
              const ProductGridItem(
                title: 'Black Poan Chair',
                imageUrl: 'assets/image_search4.png',
                price: 41,
                isWishlist: true,
              ),
              const ProductGridItem(
                title: 'White Poan Chair',
                imageUrl: 'assets/image_search1.png',
                price: 21,
                isWishlist: true,
              ),
              const ProductGridItem(
                title: 'Blue Poan Chair',
                imageUrl: 'assets/image_search2.png',
                price: 23,
                isWishlist: false,
              ),
              const ProductGridItem(
                title: 'Grey Poan Chair',
                imageUrl: 'assets/image_search3.png',
                price: 22,
                isWishlist: false,
              ),
              const ProductGridItem(
                title: 'Black Poan Chair',
                imageUrl: 'assets/image_search4.png',
                price: 41,
                isWishlist: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
