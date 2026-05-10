import 'package:get/get.dart';
import 'package:kids_trakr/feature/nutrition/nutrition_controller.dart';

class NutritionBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NutritionController>(NutritionController());
  }
}
