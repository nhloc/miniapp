import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniapp/state_management/core/constants.dart';
import 'package:miniapp/state_management/core/default_data.dart';
import 'package:miniapp/state_management/presentation/restaurant/detail/restaurant_detail_screen.dart';
import 'package:miniapp/state_management/presentation/restaurant/main/restaurant_page_card.dart';
import 'package:miniapp/state_management/presentation/restaurant/main/restaurant_pageview.dart';


class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  List bestrestaurant = DefaultData.bestrestaurant;
  List newrestaurant = DefaultData.newrestaurant;
  List allrestaurant = DefaultData.allrestaurant;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverPadding(
          padding: EdgeInsets.symmetric(vertical: defautltVertical),
          sliver: SliverToBoxAdapter(child: RestaurantPageView()),
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
              TextButton(
                  onPressed: () {
                    Get.to(const RestaurantDetailScreen(title: 'Best Choice'));
                  },
                  child: const Text('See more'))
            ],
          )),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: defautltHorizontal),
          sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
              bestrestaurant.length,
              (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: RestaurantCard(
                    name: bestrestaurant[index]["name"],
                    address: bestrestaurant[index]["address"],
                    image: bestrestaurant[index]["image"],
                  )),
            )),
          )),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: defautltHorizontal),
          sliver: SliverToBoxAdapter(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'New Restaurant',
                style: TextStyle(
                    fontSize: defautltTextSize16, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {
                    Get.to(
                        const RestaurantDetailScreen(title: 'New Restaurant'));
                  },
                  child: const Text('See more'))
            ],
          )),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: defautltHorizontal),
          sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
              newrestaurant.length,
              (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: RestaurantCard(
                    name: newrestaurant[index]["name"],
                    address: newrestaurant[index]["address"],
                    image: newrestaurant[index]["image"],
                  )),
            )),
          )),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: defautltHorizontal),
          sliver: SliverToBoxAdapter(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'All Restaurant',
                style: TextStyle(
                    fontSize: defautltTextSize16, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {
                    Get.to(
                        const RestaurantDetailScreen(title: 'All Restaurant'));
                  },
                  child: const Text('See more'))
            ],
          )),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: defautltHorizontal),
          sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
              4,
              (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: RestaurantCard(
                    name: allrestaurant[index]["name"],
                    address: allrestaurant[index]["address"],
                    image: allrestaurant[index]["image"],
                  )),
            )),
          )),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(vertical: defautltHorizontal),
        ),
      ],
    );
  }
}
