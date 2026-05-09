import 'package:get/get.dart';
import 'package:kids_trakr/feature/news/news_controller.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NewsController>(NewsController());
  }
}