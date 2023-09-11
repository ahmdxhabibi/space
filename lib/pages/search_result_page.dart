import 'package:flutter/material.dart';
import 'package:space/widgets/product_grid_item.dart';
import 'package:space/widgets/skeleton_items.dart';
import 'package:space/widgets/product_list_item.dart';

import '../theme.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  bool isLoading = true;
  bool isShowGrid = true;

// void @override
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: whiteGreyColor,
          appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 110),
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
                  )),
                  const SizedBox(
                    width: 18,
                  ),
                  Image.asset(
                    'assets/icons/filter.png',
                    width: 24,
                  )
                ],
              ),
              bottom: const TabBar(
                labelColor: blackColor,
                indicatorColor: blackColor,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: 'Chair',
                  ),
                  Tab(
                    text: 'Table',
                  ),
                  Tab(
                    text: 'Accessories',
                  ),
                  Tab(
                    text: 'Living Room',
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              buildBody(),
              buildBody(),
              buildBody(),
              buildBody(),
            ],
          )),
    );
  }

  Widget buildBody() {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Result for : Poang',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isShowGrid = !isShowGrid;
                });
              },
              child: Image.asset(
                isShowGrid ? 'assets/icons/list.png' : 'assets/icons/grid.png',
                width: 24,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        isLoading
            ? buildLoading()
            : isShowGrid
                ? buildGrid()
                : buildList(),
      ],
    );
  }

  Widget buildLoading() {
    return const Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        SkeletonItems(),
        SkeletonItems(),
        SkeletonItems(),
        SkeletonItems(),
        SkeletonItems(),
        SkeletonItems(),
        SkeletonItems(),
        SkeletonItems(),
      ],
    );
  }

  Widget buildGrid() {
    return const Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        ProductGridItem(
          title: 'White Poan Chair',
          imageUrl: 'assets/image_search1.png',
          price: 21,
          isWishlist: true,
        ),
        ProductGridItem(
          title: 'Blue Poan Chair',
          imageUrl: 'assets/image_search2.png',
          price: 23,
          isWishlist: false,
        ),
        ProductGridItem(
          title: 'Grey Poan Chair',
          imageUrl: 'assets/image_search3.png',
          price: 22,
          isWishlist: false,
        ),
        ProductGridItem(
          title: 'Black Poan Chair',
          imageUrl: 'assets/image_search4.png',
          price: 41,
          isWishlist: true,
        ),
        ProductGridItem(
          title: 'White Poan Chair',
          imageUrl: 'assets/image_search1.png',
          price: 21,
          isWishlist: true,
        ),
        ProductGridItem(
          title: 'Blue Poan Chair',
          imageUrl: 'assets/image_search2.png',
          price: 23,
          isWishlist: false,
        ),
        ProductGridItem(
          title: 'Grey Poan Chair',
          imageUrl: 'assets/image_search3.png',
          price: 22,
          isWishlist: false,
        ),
        ProductGridItem(
          title: 'Black Poan Chair',
          imageUrl: 'assets/image_search4.png',
          price: 41,
          isWishlist: true,
        ),
      ],
    );
  }

  Widget buildList() {
    return const Column(children: [
      ProductListItem(
        title: 'White Poan Chair',
        imageUrl: 'assets/image_search1.png',
        price: 21,
      ),
      ProductListItem(
          title: 'Blue Poan Chair',
          imageUrl: 'assets/image_search2.png',
          price: 23),
      ProductListItem(
          title: 'Grey Poan Chair',
          imageUrl: 'assets/image_search3.png',
          price: 22),
      ProductListItem(
          title: 'Black Poan Chair',
          imageUrl: 'assets/image_search4.png',
          price: 41),
      ProductListItem(
        title: 'White Poan Chair',
        imageUrl: 'assets/image_search1.png',
        price: 21,
      ),
      ProductListItem(
          title: 'Blue Poan Chair',
          imageUrl: 'assets/image_search2.png',
          price: 23),
      ProductListItem(
          title: 'Grey Poan Chair',
          imageUrl: 'assets/image_search3.png',
          price: 22),
      ProductListItem(
          title: 'Black Poan Chair',
          imageUrl: 'assets/image_search4.png',
          price: 41),
    ]);
  }
}
