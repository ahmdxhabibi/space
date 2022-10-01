import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomePopularItems extends StatelessWidget {
  final String title, imageUrl;
  final int price;
  final bool isWishlist;
  const HomePopularItems(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.price,
      required this.isWishlist});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Card(
        margin: const EdgeInsets.only(left: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 180,
              decoration: const BoxDecoration(
                  color: whiteGreyColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10))),
              child: Center(
                child: Image.asset(
                  imageUrl,
                  width: 160,
                ),
              ),
            ),
            Container(
              width: 200,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$$price',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                      Image.asset(
                        isWishlist
                            ? 'assets/icons/button_wishlist_active.png'
                            : 'assets/icons/button_wishlist.png',
                        width: 44,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
