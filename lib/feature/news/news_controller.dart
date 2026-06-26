import 'package:get/get.dart';
import 'package:kids_trakr/data/base/base_controller.dart';
import 'package:kids_trakr/model/news_item.dart';
import 'package:kids_trakr/gen/assets.gen.dart';
import 'package:kids_trakr/routes/app_pages.dart';

class NewsController extends BaseController {
  final List<NewsItem> newsList = [
    NewsItem(
      title: "School Science Fair 2026",
      desc: "Join us for the annual science fair where students showcase their projects.",
      image: Assets.images.firstNews.path,
      onTap: () {
        Get.toNamed(Routes.newsDetail);
      },
    ),
    NewsItem(
      title: "New Sports Equipment",
      desc: "We have upgraded our sports facilities with brand new basketballs and nets.",
      image: Assets.images.firstNews.path,
      onTap: () {},
    ),
    NewsItem(
      title: "Parent-Teacher Meeting",
      desc: "The upcoming parent-teacher meeting is scheduled for next Friday. Don't miss it!",
      image: Assets.images.firstNews.path,
      onTap: () {},
    ),
    NewsItem(
      title: "Art Exhibition Winners",
      desc: "Congratulations to the winners of this year's student art exhibition.",
      image: Assets.images.firstNews.path,
      onTap: () {},
    ),
    NewsItem(
      title: "Parent-Teacher Meeting",
      desc: "The upcoming parent-teacher meeting is scheduled for next Friday. Don't miss it!",
      image: Assets.images.firstNews.path,
      onTap: () {},
    ),
    NewsItem(
      title: "Art Exhibition Winners",
      desc: "Congratulations to the winners of this year's student art exhibition.",
      image: Assets.images.firstNews.path,
      onTap: () {},
    ),
    NewsItem(
      title: "Parent-Teacher Meeting",
      desc: "The upcoming parent-teacher meeting is scheduled for next Friday. Don't miss it!",
      image: Assets.images.firstNews.path,
      onTap: () {},
    ),
    NewsItem(
      title: "Art Exhibition Winners",
      desc: "Congratulations to the winners of this year's student art exhibition.",
      image: Assets.images.firstNews.path,
      onTap: () {},
    ),
  ];
}

