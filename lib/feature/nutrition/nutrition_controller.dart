import 'package:get/get.dart';
import 'package:kids_trakr/data/base/base_controller.dart';
import 'package:kids_trakr/gen/assets.gen.dart';
import 'package:kids_trakr/model/nutrition_item.dart';

class NutritionController extends BaseController {
  final expandedIndex = 0.obs;

  final List<NutritionItem> nutritionItems = [
    NutritionItem(
      day: "Monday",
      title: "Rice + Chicken",
      date: "12:00 PM - 1:00 PM",
      desc:
          "Rice and chicken provide protein for building muscle, carbohydrates for energy, and fats for body function.",
      content: "Protein, Carbohydrates, Fats",
      image: Assets.images.nutritionFirst.path,
    ),
    NutritionItem(
      day: "Tuesday",
      title: "Rice + Vegetables",
      date: "12:00 PM - 1:00 PM",
      desc:
          "Green vegetables are rich in fiber and vitamins, essential for maintaining a child's immunity during activities.",
      content: "Vitamins, Fiber, Minerals",
      image: Assets.images.nutritionFirst.path,
    ),
    NutritionItem(
      day: "Wednesday",
      title: "Whole Wheat",
      date: "12:00 PM - 1:00 PM",
      desc:
          "Whole wheat provides stable sustained energy, helping children stay focused while studying.",
      content: "Complex Carbohydrates, Fiber",
      image: Assets.images.nutritionFirst.path,
    ),
    NutritionItem(
      day: "Thursday",
      title: "Bread + Milk",
      date: "12:00 PM - 1:00 PM",
      desc:
          "High-calcium milk is excellent for children's bone growth, paired with bread as a calorie source.",
      content: "Calcium, Protein, Carbohydrates",
      image: Assets.images.nutritionFirst.path,
    ),
    NutritionItem(
      day: "Friday",
      title: "Fruits",
      date: "12:00 PM - 1:00 PM",
      desc:
          "A variety of fresh fruits provide antioxidants and natural sugars to refresh the body.",
      content: "Vitamin C, Antioxidants",
      image: Assets.images.nutritionFirst.path,
    ),
  ];

  void toggleExpand(int index) {
    if (expandedIndex.value == index) {
      expandedIndex.value = -1; // Collapse if already expanded
    } else {
      expandedIndex.value = index; // Expand the selected one
    }
  }
}
