import 'package:get/get.dart';
import 'package:kids_trakr/data/base/base_controller.dart';
import 'package:kids_trakr/feature/auth/authentication.dart';
import 'package:kids_trakr/gen/assets.gen.dart';
import 'package:kids_trakr/model/home_item.dart';
import 'package:flutter/material.dart';

class HomeController extends BaseController {
  final authService = Get.find<AuthenticationService>();

  final List<HomeItem> homeItems = [
    HomeItem(
      title: "Schedule",
      desc: "Subject",
      image: Assets.images.schedule.path,
      color: const Color(0xFF9fa9ff),
      onTap: () {},
    ),
    HomeItem(
      title: "Attendance",
      desc: "Child's \nPresence",
      image: Assets.images.attendance.path,
      color: const Color(0xFFceb8ff),
      onTap: () {},
    ),
    HomeItem(
      title: "Evaluation",
      desc: "Skilled \nchild",
      image: Assets.images.evaluation.path,
      color: const Color(0xFFffd59f),
      onTap: () {},
    ),
    HomeItem(
      title: "Message",
      desc: "communication",
      image: Assets.images.message.path,
      color: const Color(0xFFff9f9f),
      onTap: () {
        print("Message");
      },
    ),
    HomeItem(
      title: "News",
      desc: "Latest \nSchools",
      image: Assets.images.news.path,
      color: const Color(0xFFfff58a),
      onTap: () {},
    ),
    HomeItem(
      title: "Nutrition",
      desc: "Daily \nMeals",
      image: Assets.images.nutrition.path,
      color: const Color(0xFFb8ffba),
      onTap: () {},
    ),
  ];

  Future<void> logout() async {
    await authService.logout();
  }
}
