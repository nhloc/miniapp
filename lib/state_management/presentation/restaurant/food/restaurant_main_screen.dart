import 'package:flutter/material.dart';
import 'package:miniapp/state_management/core/constants.dart';
import 'package:miniapp/state_management/core/default_data.dart';
import 'package:miniapp/state_management/presentation/restaurant/food/categories.dart';
import 'package:miniapp/state_management/presentation/restaurant/food/category_bloc.dart';
import 'package:miniapp/state_management/presentation/restaurant/food/menu_card.dart';
import 'package:miniapp/state_management/presentation/restaurant/food/menu_category_item.dart';
import 'package:miniapp/state_management/presentation/restaurant/food/restaurant_infor.dart';
import 'restaurant_appbar.dart';

class RestaurantMainScreen extends StatefulWidget {
  const RestaurantMainScreen({
    super.key,
    required this.image,
    required this.name,
    required this.address,
  });

  final String? image;
  final String? name;
  final String? address;

  @override
  State<RestaurantMainScreen> createState() => _RestaurantMainScreenState();
}

class _RestaurantMainScreenState extends State<RestaurantMainScreen>
    with SingleTickerProviderStateMixin {
  final data = DefaultData.foodlist;
  final bloC = CategoryBloC();
  final scrollController = ScrollController();
  double heightInfor = appBarHeight + appInforHeight - appBarPinnedHeight;
  int selectTab = 0;
  List<double> breakPoints = [];
  @override
  void initState() {
    bloC.init(this);
    createBreakPoint();
    scrollController.addListener(() {
      updateCategoryScroll(scrollController.offset);
    });
    super.initState();
  }

  void scrollToCategory(int index) {
    if (selectTab != index) {
      int totalItem = 0;
      for (int i = 0; i < index; i++) {
        totalItem += data[i].foods.length;
      }
      scrollController.animateTo(
        heightInfor + (heightItem * totalItem) + heightCategoryItem * index,
        duration: const Duration(microseconds: 500),
        curve: Curves.ease,
      );
    }
    setState(() {
      selectTab = index;
    });
  }

  void createBreakPoint() {
    double breakPoint0 =
        heightInfor + heightCategoryItem + heightItem * data[0].foods.length;
    breakPoints.add(breakPoint0);
    for (int i = 1; i < data.length; i++) {
      double breakPoint = breakPoints.last +
          heightCategoryItem +
          heightItem * data[i].foods.length;
      breakPoints.add(breakPoint);
    }
  }

  void updateCategoryScroll(double offset) {
    for (int i = 0; i < data.length; i++) {
      if (i == 0) {
        if (offset < breakPoints.first && selectTab != 0) {
          setState(() {
            selectTab = 0;
          });
        }
      } else if (breakPoints[i - 1] <= offset && offset < breakPoints[i]) {
        if (selectTab != i) {
          setState(() {
            selectTab = i;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            RestaurantAppBar(
              image: widget.image!,
            ),
            SliverToBoxAdapter(
              child: RestaurantInfor(
                name: widget.name!,
                address: widget.address!,
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: RestaurantCategories(
                onChanged: scrollToCategory,
                selectedIndex: selectTab,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: defautltHorizontal),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, categoryIndex) {
                    final item = bloC.items[categoryIndex];
                    if (item.isCategory) {
                      return MenuCategoryItem(category: item.category!);
                    } else {
                      return MenuCard(food: item.food!);
                    }
                  },
                  childCount: bloC.items.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
