import 'package:get/get.dart';
import 'package:kids_trakr/feature/home/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}