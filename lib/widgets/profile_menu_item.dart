import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final bool isLightMode;
  const ProfileMenuItem(
      {Key? key,
      required this.iconUrl,
      required this.title,
      required this.isLightMode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 24,
            color: isLightMode ? null : whiteColor,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
                color: isLightMode ? null : whiteColor),
          ),
          const Spacer(),
          Icon(
            Icons.chevron_right,
            color: isLightMode ? greyColor : whiteColor,
          )
        ],
      ),
    );
  }
}
