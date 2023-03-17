import 'package:flutter/material.dart';
import 'package:miniapp/state_management/core/default_data.dart';
import 'package:miniapp/state_management/domain/food_category.dart';

import '../../../domain/food.dart';

const double heightCategory = 55.0;
const double heightFood = 100.0;

class FoodTabCategory {
  FoodTabCategory(
      {required this.category,
      required this.selected,
      required this.offsetFrom,
      required this.offsetTo});
  final FoodCategory category;
  final bool selected;
  final double offsetFrom;
  final double offsetTo;
  FoodTabCategory copyWith(bool selected) => FoodTabCategory(
        category: category,
        selected: selected,
        offsetFrom: offsetFrom,
        offsetTo: offsetTo,
      );
}

class FoodItem {
  FoodItem({this.category, this.food});
  final FoodCategory? category;
  final Food? food;
  bool get isCategory => category != null;
}

class FoodBloC with ChangeNotifier {
  late TabController tabController;
  final ScrollController scrollController = ScrollController();

  List<FoodTabCategory> tabs = [];
  List<FoodItem> items = [];
  double offsetFrom = 0.0;
  double offsetTo = 0.0;

  void init(TickerProvider ticker) {
    tabController = TabController(
      length: DefaultData.foodlist.length,
      vsync: ticker,
    );
    scrollController.addListener(onScollListener);

    for (int i = 0; i < DefaultData.foodlist.length; i++) {
      final category = DefaultData.foodlist[i];

      if (i > 0) {
        offsetFrom += DefaultData.foodlist[i - 1].foods.length * heightFood;
      }
      if (i < DefaultData.foodlist.length - 1) {
        offsetTo = offsetFrom + DefaultData.foodlist[i].foods.length * heightFood;
      } else {
        offsetTo = double.infinity;
      }

      tabs.add(FoodTabCategory(
          category: category,
          selected: (i == 0),
          offsetFrom: heightCategory * (i + 1) + offsetFrom,
          offsetTo: offsetTo));

      items.add(FoodItem(category: category));
      for (int j = 0; j < category.foods.length; j++) {
        final food = category.foods[j];
        items.add(FoodItem(food: food));
      }
    }
  }

  void onScollListener() {
    for (int i = 0; i < tabs.length; i++) {
      final tab = tabs[i];
      if (scrollController.offset >= tab.offsetFrom &&
          scrollController.offset <= tab.offsetTo &&
          !tab.selected) {
        onCategorySelected(i);
        break;
      }
    }
  }

  void onCategorySelected(int value) {
    final selectedTab = tabs[value];
    for (int i = 0; i < DefaultData.foodlist.length; i++) {
      final condition = selectedTab.category.name == tabs[i].category.name;
      tabs[i] = tabs[i].copyWith(condition);
    }
    notifyListeners();
    
    scrollController.animateTo(selectedTab.offsetFrom,
        duration: const Duration(microseconds: 500), curve: Curves.bounceOut);
  }

  @override
  void dispose() {
    tabController.dispose();
    scrollController.removeListener(onScollListener);
    scrollController.dispose();
    super.dispose();
  }
}
