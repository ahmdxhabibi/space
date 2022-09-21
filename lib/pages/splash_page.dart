import 'dart:async';

import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 98,
              width: 82,
              margin: const EdgeInsets.only(right: 16),
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/logo.png'))),
            ),
            Text(
              'Space',
              style: TextStyle(
                  fontWeight: bold, fontSize: 36, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
