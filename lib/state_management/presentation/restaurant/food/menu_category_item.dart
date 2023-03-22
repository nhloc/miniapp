import 'package:flutter/material.dart';
import 'package:miniapp/state_management/core/constants.dart';
import 'package:miniapp/state_management/domain/food_category.dart';
import 'package:miniapp/state_management/presentation/restaurant/food/category_bloc.dart';

class MenuCategoryItem extends StatelessWidget {
  const MenuCategoryItem({
    super.key,
    required this.category,
  });
  final FoodCategory category;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: heightCategory,
        alignment: Alignment.centerLeft,
        color: Colors.white,
        child: Text(
          category.name!,
          style: const TextStyle(
            fontSize: defautltTextSize18,
            fontWeight: FontWeight.bold,
          ),
        ));
    ;
  }
}
