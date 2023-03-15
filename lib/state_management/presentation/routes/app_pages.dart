import 'package:get/get.dart';
import 'package:miniapp/state_management/presentation/routes/app_routes.dart';
import 'package:miniapp/state_management/presentation/splash/splash_binding.dart';
import 'package:miniapp/state_management/presentation/splash/splash_screen.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.splash,
        page: () => SplashScreen(),
        binding: SplashBinding())
  ];
}
