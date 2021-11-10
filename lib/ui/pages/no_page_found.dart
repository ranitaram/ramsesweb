import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class NoPageFound extends StatelessWidget {
  const NoPageFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 600,
        height: double.infinity,
        child: Lottie.network(
          'https://assets8.lottiefiles.com/packages/lf20_afwjhfb2.json',
          height: 100,
        ),
      ),
    );
  }
}
