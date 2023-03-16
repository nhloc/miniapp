import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/master_ui.dart';

class RestaurantPageView extends StatefulWidget {
  const RestaurantPageView({super.key});

  @override
  State<RestaurantPageView> createState() => _RestaurantPageViewState();
}

class _RestaurantPageViewState extends State<RestaurantPageView> {
  int currentPage = 0;

  List<Map<String, String>> dataWall = [
    {"image": "${MasterUI.imageDir}/image1.jpg"},
    {"image": "${MasterUI.imageDir}/image2.jpg"},
    {"image": "${MasterUI.imageDir}/image3.jpg"},
    {"image": "${MasterUI.imageDir}/image4.jpg"}
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
              itemCount: dataWall.length,
              itemBuilder: (context, index) {
                return Image.asset(dataWall[index]["image"]!);
              },
              onPageChanged: (value) => setState(() {
                    currentPage = value;
                  })),
          Positioned(
            bottom: 16,
            right: 16,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    dataWall.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: IndicatorDot(isActive: index == currentPage),
                        ))),
          )
        ],
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({Key? key, required this.isActive}) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 10,
      decoration: BoxDecoration(
          color: isActive ? kMainColor : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
