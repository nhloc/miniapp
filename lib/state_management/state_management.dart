import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniapp/state_management/presentation/main_binding.dart';
import 'package:miniapp/state_management/presentation/routes/app_pages.dart';
import 'package:miniapp/state_management/presentation/routes/app_routes.dart';

class StateManagement extends StatelessWidget {
  const StateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
      initialBinding: MainBinding(),
      theme: ThemeData(fontFamily: 'Inter')
    );
  }
}