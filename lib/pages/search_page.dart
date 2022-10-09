import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/recommendation_items.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteGreyColor,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: AppBar(
          elevation: 0,
          backgroundColor: whiteColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              const Icon(
                Icons.chevron_left,
                color: blackColor,
              ),
              const SizedBox(
                width: 18,
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: whiteGreyColor,
                    borderRadius: BorderRadius.circular(14)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        textInputAction: TextInputAction.go,
                        onFieldSubmitted: (value) {
                          Navigator.pushNamed(context, '/search-result');
                        },
                        decoration: const InputDecoration.collapsed(
                            hintText: 'Search furniture'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.close,
                      color: greyColor,
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 41,
          ),
          Text(
            'Recommendation',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 20,
          ),
          const RecommendationItems(
              imageUrl: 'assets/image_category1.png',
              title: 'Poan Chair',
              price: 34),
          const RecommendationItems(
              imageUrl: 'assets/image_category2.png',
              title: 'Poan Chair',
              price: 34),
          const RecommendationItems(
              imageUrl: 'assets/image_category3.png',
              title: 'Poan Chair',
              price: 34),
        ],
      ),
    );
  }
}
