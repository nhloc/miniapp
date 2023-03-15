import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniapp/state_management/core/constants.dart';
import 'package:miniapp/state_management/core/master_ui.dart';
import 'package:miniapp/state_management/presentation/routes/app_routes.dart';
import 'package:miniapp/state_management/presentation/splash/splash_pageview.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  List<Map<String, String>> dataWall = [
    {
      "title": "Fast delivery less than 15 minutes",
      "image": MasterUI.wallpaper1
    },
    {
      "title": "Always the number one pizza in the country",
      "image": MasterUI.wallpaper2
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            flex: 2,
            child: PageView.builder(
                itemCount: dataWall.length,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemBuilder: (context, index) {
                  return SplashPageView(
                      title: dataWall[index]["title"],
                      image: dataWall[index]["image"]);
                })),
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      dataWall.length,
                      (index) => Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: buildDot(index: index))),
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.offNamed(AppRoutes.login);
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: kMainColor),
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ))
      ],
    ));
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration.zero,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kMainColor : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
