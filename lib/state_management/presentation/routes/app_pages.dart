import 'package:get/get.dart';
import 'package:miniapp/state_management/presentation/home/home_binding.dart';
import 'package:miniapp/state_management/presentation/home/home_screen.dart';
import 'package:miniapp/state_management/presentation/login/login_binding.dart';
import 'package:miniapp/state_management/presentation/login/login_screen.dart';
import 'package:miniapp/state_management/presentation/routes/app_routes.dart';
import 'package:miniapp/state_management/presentation/splash/splash_binding.dart';
import 'package:miniapp/state_management/presentation/splash/splash_screen.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.splash,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.login,
        page: () => const LoginScreen(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.home,
        page: () => const HomeScreen(),
        binding: HomeBinding())
  ];
}
