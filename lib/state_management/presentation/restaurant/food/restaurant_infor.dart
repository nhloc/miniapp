import 'package:flutter/material.dart';
import 'package:miniapp/state_management/core/constants.dart';

class RestaurantInfor extends StatelessWidget {
  const RestaurantInfor({super.key, required this.name, required this.address});

  final String? name;
  final String? address;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: appInforHeight,
      child: Padding(
        padding: const EdgeInsets.only(
            left: defautltHorizontal, top: defautltHorizontal),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name!,
              style: const TextStyle(fontSize: defautltTextSize18),
            ),
            Text(address!)
          ],
        ),
      ),
    );
  }
}
