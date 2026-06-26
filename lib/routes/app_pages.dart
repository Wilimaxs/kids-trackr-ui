import 'package:get/get.dart';
import 'package:kids_trakr/feature/attendance/attendance_binding.dart';
import 'package:kids_trakr/feature/attendance/attendance_page.dart';
import 'package:kids_trakr/feature/home/home_binding.dart';
import 'package:kids_trakr/feature/home/home_page.dart';
import 'package:kids_trakr/feature/loader/loader_page.dart';
import 'package:kids_trakr/feature/login/login_binding.dart';
import 'package:kids_trakr/feature/login/login_page.dart';
import 'package:kids_trakr/feature/message/message_binding.dart';
import 'package:kids_trakr/feature/message/message_page.dart';
import 'package:kids_trakr/feature/news/news_binding.dart';
import 'package:kids_trakr/feature/news/news_detail/news_detail_binding.dart';
import 'package:kids_trakr/feature/news/news_detail/news_detail_page.dart';
import 'package:kids_trakr/feature/news/news_page.dart';
import 'package:kids_trakr/feature/nutrition/nutrition_binding.dart';
import 'package:kids_trakr/feature/nutrition/nutrition_page.dart';
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
    GetPage(
      name: Routes.message,
      page: () => const MessagePage(),
      binding: MessageBinding(),
    ),
    GetPage(
      name: Routes.news,
      page: () => const NewsPage(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: Routes.newsDetail,
      page: () => const NewsDetailPage(),
      binding: NewsDetailBinding(),
    ),
    GetPage(
      name: Routes.nutrition,
      page: () => const NutritionPage(),
      binding: NutritionBinding(),
    ),
  ];
}
