import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:miniapp/state_management/presentation/restaurant/food/restaurant_food_screen.dart';

class RestaurantDetailCard extends StatelessWidget {
  const RestaurantDetailCard(
      {super.key,
      required this.name,
      required this.address,
      required this.image});

  final String? name;
  final String? address;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 180,
          child: Image.asset(image!),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  Get.to(RestaurantFoodScreen(
                    image: image!,
                    name: name!,
                    address: address!,
                  ));
                },
                child: Text(
                  name!,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                )),
            SizedBox(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(address!, overflow: TextOverflow.ellipsis),
                )),
            Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
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
                )),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ],
    );
  }
}
