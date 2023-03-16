import 'package:flutter/material.dart';
import 'package:miniapp/state_management/core/constants.dart';
import 'package:miniapp/state_management/core/default_data.dart';
import 'package:miniapp/state_management/presentation/restaurant/detail/restaurant_detail_card.dart';

class RestaurantDetailScreen extends StatelessWidget {
  const RestaurantDetailScreen({super.key, required this.title});

  final String? title;
  final List data = DefaultData.allrestaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        backgroundColor: kMainColor,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: RestaurantDetailCard(
                  name: data[index]["name"],
                  address: data[index]["address"],
                  image: data[index]["image"],
                ));
          }, childCount: data.length)),
        ],
      ),
    );
  }
}
