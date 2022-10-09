import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space/theme.dart';

class SkeletonItems extends StatelessWidget {
  const SkeletonItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: (MediaQuery.of(context).size.width - 82) / 2,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Shimmer.fromColors(
                child: Container(
                  width: double.infinity,
                  height: 122,
                  color: lineDarkColor,
                ),
                baseColor: lineDarkColor,
                highlightColor: whiteGreyColor),
            const SizedBox(
              height: 20,
            ),
            Shimmer.fromColors(
                child: Container(
                  width: double.infinity,
                  height: 22,
                  color: lineDarkColor,
                ),
                baseColor: lineDarkColor,
                highlightColor: whiteGreyColor),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Shimmer.fromColors(
                    child: Container(
                      width: 57,
                      height: 25,
                      color: lineDarkColor,
                    ),
                    baseColor: lineDarkColor,
                    highlightColor: whiteGreyColor),
                Shimmer.fromColors(
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                          color: lineDarkColor, shape: BoxShape.circle),
                    ),
                    baseColor: lineDarkColor,
                    highlightColor: whiteGreyColor),
              ],
            )
          ],
        ),
      ),
    );
  }
}
