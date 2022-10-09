import 'package:flutter/material.dart';
import 'package:space/widgets/skeleton_items.dart';

import '../theme.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

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
            Image.asset(
              'assets/icons/list.png',
              width: 24,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        buildLoading()
      ],
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
}
