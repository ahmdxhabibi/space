import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class ProductListItem extends StatelessWidget {
  final String imageUrl, title;
  final int price;
  const ProductListItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 60,
          ),
          const SizedBox(
            width: 6,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                '\$$price',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              )
            ],
          )
        ],
      ),
    );
  }
}
