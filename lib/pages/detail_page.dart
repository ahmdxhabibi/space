import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color indicatorColor = Color(0xff394A54);
  double indicatorMargin = 5;
  int indexImg = 1;
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteGreyColor,
      bottomNavigationBar: isExpand
          ? null
          : Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 96,
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Row(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        color: whiteGreyColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/shopping_cart.png',
                        width: 24,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 280,
                    height: 56,
                    decoration: BoxDecoration(
                        color: blackColor,
                        borderRadius: BorderRadius.circular(14)),
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: whiteTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                    ),
                  )
                ],
              ),
            ),
      // BOTTOM NAVBAR
      body: Stack(children: [
        Image.asset(
          'assets/img_bg.png',
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 44,
            width: 44,
            margin: EdgeInsets.only(top: 86, left: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: lineDarkColor),
              color: whiteColor,
            ),
            child: Icon(Icons.chevron_left),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(38, 105, 62, 0),
          child: Image.asset(
            'assets/image_detail$indexImg.png',
            width: 314,
            height: 314,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 308),
          child: Image.asset(
            'assets/img_rotate.png',
            width: double.infinity,
            height: 175,
          ),
        ),
        SizedBox.expand(
            child: DraggableScrollableSheet(
                initialChildSize: 0.3,
                minChildSize: 0.3,
                maxChildSize: 0.9,
                builder: (BuildContext build, scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40))),
                    // child: NotificationListener(
                    //   onNotification: (Notification notif) {
                    //     if (notif is ScrollEndNotification) {
                    //       if (notif.metrics.minScrollExtent == -1.0) {
                    //         setState(() {
                    //           isExpand = true;
                    //         });
                    //       } else {
                    //         setState(() {
                    //           isExpand = false;
                    //         });
                    //       }
                    //     }
                    //     return true;
                    //   },
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Center(
                              child: Container(
                                width: 30,
                                height: 4,
                                decoration: BoxDecoration(
                                    color: lineDarkColor,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Poang Chair',
                                  style: blackTextStyle.copyWith(
                                      fontSize: 24, fontWeight: semiBold),
                                ),
                                Text(
                                  '\$219',
                                  style: blackTextStyle.copyWith(fontSize: 24),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'IKOE',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 50,
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Row(
                                    children: [
                                      colorIndicator(Color(0xff394A54), 0),
                                      colorIndicator(Color(0xffEBA823), 1),
                                      colorIndicator(Color(0xff757477), 2),
                                      colorIndicator(Color(0xff29282C), 3),
                                      colorIndicator(Color(0xffECE9DA), 4),
                                    ],
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    height: 40,
                                    width: 40,
                                    margin:
                                        EdgeInsets.only(left: indicatorMargin),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: indicatorColor,
                                        border: Border.all(
                                            width: 3, color: whiteColor)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!",
                              style: greyTextStyle.copyWith(
                                  fontWeight: semiBold, height: 1.2),
                            )
                          ],
                        ),
                      ),
                    ),
                    // ),
                  );
                })),
      ]),
    );
  }

  Widget colorIndicator(Color color, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indicatorColor = color;
          indicatorMargin = 5 + (index * 68);
          indexImg = index + 1;
        });
      },
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        margin: EdgeInsets.only(right: 18),
      ),
    );
  }
}
