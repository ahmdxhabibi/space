import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late FToast fToast;
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool isShowPasswordError = false;
  bool isRememberMe = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

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
      margin: const EdgeInsets.only(top: 38),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: whiteGreyColor, borderRadius: BorderRadius.circular(14)),
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration.collapsed(
            hintText: 'Email',
            hintStyle:
                greyTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
      ),
    );
  }

  Widget passwordInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 27),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: whiteGreyColor, borderRadius: BorderRadius.circular(14)),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: passwordController,
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
        ),
        if (isShowPasswordError)
          Text(
            'Password kamu salah',
            style: redTextStyle,
          ),
      ],
    );
  }

  Widget rememberCheckbox() {
    return Container(
      margin: const EdgeInsets.only(top: 27),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: isRememberMe,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
          SizedBox(
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
      margin: const EdgeInsets.only(top: 20),
      height: 56,
      width: double.infinity,
      child: TextButton(
          onPressed: () {
            setState(() {
              isLoading = true;
            });

            Future.delayed(Duration(seconds: 2), () {
              setState(() {
                isLoading = false;
              });
              if (passwordController.text != '123') {
                setState(() {
                  isShowPasswordError = true;
                });
                fToast.showToast(
                    child: errorToast(),
                    toastDuration: Duration(seconds: 2),
                    gravity: ToastGravity.BOTTOM);
              }
            });
          },
          style: TextButton.styleFrom(
              backgroundColor: blackColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14))),
          child: isLoading
              ? CircularProgressIndicator(
                  color: whiteColor,
                  backgroundColor: greyColor,
                )
              : Text(
                  'Login',
                  style: whiteTextStyle.copyWith(
                      fontSize: 18, fontWeight: semiBold),
                )),
    );
  }

  Widget loginGoogleButton() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
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
      margin: EdgeInsets.only(top: 8),
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

  Widget errorToast() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: redColor, borderRadius: BorderRadius.circular(10)),
      child: Text(
        'Password Salah',
        style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
      ),
    );
  }
}
