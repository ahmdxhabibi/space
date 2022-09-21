import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [title(), emailInput(), passwordInput()],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 84),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login to your\naccount',
            style:
                blackAccentTextStyle.copyWith(fontSize: 24, fontWeight: bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 87,
                height: 4,
                margin: EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: blackColor),
              ),
              Container(
                width: 8,
                height: 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: blackColor),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 48),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: whiteGreyColor, borderRadius: BorderRadius.circular(14)),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
            hintText: 'Email',
            hintStyle:
                greyTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: EdgeInsets.only(top: 32),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: whiteGreyColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration.collapsed(
                  hintText: 'Password',
                  hintStyle: greyTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold)),
            ),
          ),
          Icon(
            Icons.visibility_outlined,
            color: greyColor,
          )
        ],
      ),
    );
  }
}
