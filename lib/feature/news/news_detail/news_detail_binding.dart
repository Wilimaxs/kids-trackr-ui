import 'package:get/get.dart';
import 'package:kids_trakr/feature/news/news_detail/news_detail_controller.dart';

class NewsDetailBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<NewsDetailController>(NewsDetailController());
  }
}