import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:miniapp/state_management/core/constants.dart';
import 'package:miniapp/state_management/core/master_ui.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(
              horizontal: defautltHorizontal, vertical: defautltVertical),
          sliver: SliverToBoxAdapter(
              child: Image.asset('${MasterUI.imageDir}/image1.jpg')),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: defautltHorizontal),
          sliver: SliverToBoxAdapter(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Best Choice',
                style: TextStyle(
                    fontSize: defautltTextSize16, fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: () {}, child: Text('See more'))
            ],
          )),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: defautltHorizontal),
          sliver: SliverToBoxAdapter(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: Image.asset('${MasterUI.imageDir}/image4.jpg'),
              ),
              const Text(
                'Name Restaurant',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const Text('Address'),
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
                    padding: EdgeInsets.only(left: 5),
                    child: Text('Free Ship', style: TextStyle(fontSize: 12)),
                  )
                ],
              )
            ],
          )),
        )
      ],
    );
  }
}
