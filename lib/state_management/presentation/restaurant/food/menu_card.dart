import 'package:flutter/material.dart';
import 'package:miniapp/state_management/domain/food.dart';
import 'package:miniapp/state_management/presentation/restaurant/food/category_bloc.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
    required this.food,
  });
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightFood,
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: 
      Text(food.name!),
    );
  }
}
