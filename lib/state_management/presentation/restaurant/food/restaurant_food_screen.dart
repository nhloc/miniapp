import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniapp/state_management/core/constants.dart';
import 'package:miniapp/state_management/domain/food.dart';
import 'package:miniapp/state_management/domain/food_category.dart';
import 'package:miniapp/state_management/presentation/restaurant/food/food_bloc.dart';

class RestaurantFoodScreen extends StatefulWidget {
  const RestaurantFoodScreen(
      {super.key,
      required this.image,
      required this.name,
      required this.address});

  final String? image;
  final String? name;
  final String? address;

  @override
  State<RestaurantFoodScreen> createState() => _RestaurantFoodScreenState();
}

class _RestaurantFoodScreenState extends State<RestaurantFoodScreen>
    with SingleTickerProviderStateMixin {
  final bloC = FoodBloC();

  @override
  void initState() {
    bloC.init(this);
    super.initState();
  }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: AnimatedBuilder(
//       animation: bloC,
//       builder: (_, __) => CustomScrollView(
//         controller: bloC.scrollController,
//         slivers: [
//           SliverAppBar(
//             pinned: true,
//             snap: true,
//             title: Text(widget.name!),
//             //expandedHeight: 300,
//             backgroundColor: kMainColor,
//             floating: true,

//             //leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
//             actions: [
//               IconButton(onPressed: () {}, icon: const Icon(Icons.search))
//             ],
//             bottom: TabBar(
//                 controller: bloC.tabController,
//                 onTap: bloC.onCategorySelected,
//                 indicatorWeight: 0.1,
//                 isScrollable: true,
//                 tabs: bloC.tabs
//                     .map((e) => FoodTabWidget(tabCategory: e))
//                     .toList()),
//           ),
//           SliverList(
//               delegate: SliverChildBuilderDelegate((context, index) {
//             final item = bloC.items[index];
//             if (item.isCategory) {
//               return _FoodCategoryItemWidget(category: item.category!);
//             } else {
//               return _FoodItemWidget(food: item.food!);
//             }
//           }, childCount: bloC.items.length))
//         ],
//       ),
//     ));
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: bloC.scrollController,
          slivers: [
            _FlexibleSpaceBarWidget(
              image: widget.image!,
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _HeaderSliver(
                name: widget.name!,
                address: widget.address!,
                bloC: bloC,
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              final item = bloC.items[index];
              if (item.isCategory) {
                return _FoodCategoryItemWidget(category: item.category!);
              } else {
                return _FoodItemWidget(food: item.food!);
              }
            }, childCount: bloC.items.length))
          ],
        ),
      ),
    );
  }
}

// ignore: unused_element
class _FlexibleSpaceBarWidget extends StatelessWidget {
  const _FlexibleSpaceBarWidget({required this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        stretchModes: const [StretchMode.zoomBackground],
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              image!,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withOpacity(0.2),
            ),
            Positioned(
              right: 10,
              top: 20,
              child: IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 32,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            Positioned(
                left: 10,
                top: 20,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.white,
                  ),
                  onPressed: () => Get.back(),
                ))
          ],
        ),
      ),
    );
  }
}

const maxHeaderExtent = 100.0;

// ignore: unused_element
class _HeaderSliver extends SliverPersistentHeaderDelegate {
  _HeaderSliver(
      {required this.name, required this.address, required this.bloC});
  final String? name;
  final String? address;
  final FoodBloC bloC;
  @override
  Widget build(Object context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / maxHeaderExtent;

    return Stack(
      children: [
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: maxHeaderExtent,
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AnimatedOpacity(
                            opacity: percent > 0.1 ? 1 : 0,
                            duration: const Duration(microseconds: 300),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 32,
                                color: Colors.white,
                              ),
                              onPressed: () => Get.back(),
                            )),
                        AnimatedSlide(
                          offset: Offset(percent < 0.1 ? -0.18 : 0.1, 0),
                          duration: const Duration(microseconds: 300),
                          curve: Curves.easeIn,
                          child: Text(
                            name!,
                            style: const TextStyle(
                                fontSize: defautltTextSize18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defautltHorizontal),
                          child: AnimatedSwitcher(
                              duration: const Duration(microseconds: 400),
                              child: percent > 0.1
                                  ? Row(
                                      children: bloC.tabs
                                          .map((e) => Padding(
                                              padding:
                                                  const EdgeInsets.only(right: 15),
                                              child: FoodTabWidget(
                                                  tabCategory: e)))
                                          .toList())
                                  : Text(address!))),
                    )
                  ]),
            ))
      ],
    );
  }

  @override
  double get maxExtent => maxHeaderExtent;

  @override
  double get minExtent => maxHeaderExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class FoodTabWidget extends StatelessWidget {
  const FoodTabWidget({super.key, required this.tabCategory});
  final FoodTabCategory tabCategory;

  @override
  Widget build(BuildContext context) {
    final bool selected = tabCategory.selected;
    return Opacity(
        opacity: selected ? 1 : 0.5,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: kMainColor,
          elevation: selected ? 6 : 0,
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                tabCategory.category.name!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )),
        ));
  }
}

// ignore: unused_element
class _FoodCategoryItemWidget extends StatelessWidget {
  const _FoodCategoryItemWidget({required this.category});
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
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

// ignore: unused_element
class _FoodItemWidget extends StatelessWidget {
  const _FoodItemWidget({required this.food});
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightFood,
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: Text(food.name!),
    );
  }
}
