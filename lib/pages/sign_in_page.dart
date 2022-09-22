import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          emailInput(),
          passwordInput(),
          rememberCheckbox(),
          loginButton(),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 24, bottom: 21),
              child: Text(
                'OR',
                style:
                    greyTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
            ),
          ),
          loginGoogleButton(),
          registerButton()
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: const EdgeInsets.only(top: 84),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login to your\naccount',
            style:
                blackAccentTextStyle.copyWith(fontSize: 24, fontWeight: bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 87,
                height: 4,
                margin: const EdgeInsets.only(right: 4),
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
      margin: const EdgeInsets.only(top: 48),
      padding: const EdgeInsets.all(16),
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
      margin: const EdgeInsets.only(top: 32),
      padding: const EdgeInsets.all(16),
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
          const Icon(
            Icons.visibility_outlined,
            color: greyColor,
          )
        ],
      ),
    );
  }

  Widget rememberCheckbox() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: false,
              onChanged: (value) {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            'Remember me',
            style: blackTextStyle.copyWith(fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget loginButton() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      height: 56,
      width: double.infinity,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: blackColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14))),
          child: Text(
            'Login',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
          )),
    );
  }

  Widget loginGoogleButton() {
    return Container(
      margin: const EdgeInsets.only(top: 21),
      height: 56,
      width: double.infinity,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: whiteColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14))),
          child: Text(
            'Login with Google',
            style: blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
          )),
    );
  }

  Widget registerButton() {
    return Container(
      margin: EdgeInsets.only(top: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don’t have an account?',
            style: greyTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          SizedBox(
            width: 8,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Register',
                style:
                    blueTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ))
        ],
      ),
    );
  }
}
