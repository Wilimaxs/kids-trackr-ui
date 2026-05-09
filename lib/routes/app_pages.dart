import 'package:get/get.dart';
import 'package:kids_trakr/feature/attendance/attendance_binding.dart';
import 'package:kids_trakr/feature/attendance/attendance_page.dart';
import 'package:kids_trakr/feature/home/home_binding.dart';
import 'package:kids_trakr/feature/home/home_page.dart';
import 'package:kids_trakr/feature/loader/loader_page.dart';
import 'package:kids_trakr/feature/login/login_binding.dart';
import 'package:kids_trakr/feature/login/login_page.dart';
import 'package:kids_trakr/feature/profile/profile_binding.dart';
import 'package:kids_trakr/feature/profile/profile_page.dart';
import 'package:kids_trakr/feature/schedule/schedule_binding.dart';
import 'package:kids_trakr/feature/schedule/schedule_page.dart';

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
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.schedule,
      page: () => const SchedulePage(),
      binding: ScheduleBinding(),
    ),
    GetPage(
      name: Routes.attendance,
      page: () => const AttendancePage(),
      binding: AttendanceBinding(),
    ),
  ];
}
