import 'package:flutter/material.dart';
import 'package:miniapp/state_management/core/constants.dart';

class SplashPageView extends StatelessWidget {
  const SplashPageView({super.key, required this.title, required this.image});

  final String? title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Spacer(flex: 1),
        Image.asset(image!),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 5), child:  Text('Mini App', style: TextStyle(color: kMainColor, fontSize: 24, fontWeight: FontWeight.bold),)),
        Text(title!,style: const TextStyle(color: kMainColor, fontSize: defautltTextSize18,))
      ],
    );
  }
}
