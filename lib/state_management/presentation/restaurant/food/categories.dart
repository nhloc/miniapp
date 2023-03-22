import 'package:flutter/material.dart';
import 'package:miniapp/state_management/core/constants.dart';
import 'package:miniapp/state_management/core/default_data.dart';

const maxHeaderExtent = 50.0;

class RestaurantCategories extends SliverPersistentHeaderDelegate {
  RestaurantCategories({
    required this.onChanged,
    required this.selectedIndex,
  });
  final ValueChanged<int> onChanged;
  final int selectedIndex;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: maxHeaderExtent,
      color: Colors.white,
      child: Categories(
        onChanged: onChanged,
        selectedIndex: selectedIndex,
      ),
    );
  }

  @override
  double get maxExtent => maxHeaderExtent;

  @override
  double get minExtent => maxHeaderExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class Categories extends StatefulWidget {
  const Categories({
    super.key,
    required this.onChanged,
    required this.selectedIndex,
  });
  final ValueChanged<int> onChanged;
  final int selectedIndex;
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late ScrollController scrollController;
  final tabs = DefaultData.foodlist;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant Categories oldWidget) {
    scrollController.animateTo(
      80.0 * widget.selectedIndex,
      duration: const Duration(microseconds: 200),
      curve: Curves.ease,
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            tabs.length,
            (index) => Padding(
                  padding: const EdgeInsets.only(left: defautltHorizontal),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: widget.selectedIndex == index
                            ? const Color.fromARGB(143, 253, 196, 111)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        )),
                    child: Text(
                      tabs[index].name!,
                      style: const TextStyle(
                          fontSize: defautltTextSize16, color: Colors.black87),
                    ),
                    onPressed: () {
                      widget.onChanged(index);
                    },
                  ),
                )),
      ),
    );
  }
}
