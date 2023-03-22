import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:miniapp/state_management/presentation/restaurant/food/restaurant_main_screen.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard(
      {super.key,
      required this.name,
      required this.address,
      required this.image});

  final String? name;
  final String? address;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
          child: Image.asset(image!),
        ),
        TextButton(
            onPressed: () {
              Get.to(RestaurantMainScreen(
                image: image!,
                name: name!,
                address: address!,
              ));
            },
            child: Text(
              name!,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )),
        SizedBox(
          width: 200,
          child: Text(address!, overflow: TextOverflow.ellipsis),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RatingBar.builder(
              itemSize: 12,
              initialRating: 4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 0.5),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Free Ship', style: TextStyle(fontSize: 12)),
            )
          ],
        )
      ],
    );
  }
}
