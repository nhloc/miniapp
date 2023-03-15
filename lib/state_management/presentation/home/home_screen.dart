import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:miniapp/state_management/core/constants.dart';
import 'package:miniapp/state_management/core/default_data.dart';
import 'package:miniapp/state_management/presentation/restaurant/main/restaurant_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List bestRestaurant = DefaultData.bestrestaurant;
  List newRestaurant = DefaultData.newrestaurant;
  List allRestaurant = DefaultData.allrestaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Mini App'),
          backgroundColor: kMainColor,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ]),
          body: const RestaurantScreen(),
    );
  }
}
