import 'package:get/get.dart';
import 'package:kids_trakr/feature/home/home_binding.dart';
import 'package:kids_trakr/feature/home/home_page.dart';
import 'package:kids_trakr/feature/loader/loader_page.dart';
import 'package:kids_trakr/feature/login/login_binding.dart';
import 'package:kids_trakr/feature/login/login_page.dart';

part 'app_routes.dart';

class PageRoutes {
  static final routes = [
    GetPage(name: Routes.initial, page: () => const LoaderPage()),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
