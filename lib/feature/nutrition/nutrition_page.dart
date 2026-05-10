import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/feature/nutrition/nutrition_controller.dart';
import 'package:kids_trakr/feature/nutrition/widgets/content_list.dart';
import 'package:kids_trakr/feature/nutrition/widgets/header_nutrition.dart';

class NutritionPage extends GetView<NutritionController> {
  const NutritionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nutrition'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          const Column(children: [HeaderNutrition()]),
          DraggableScrollableSheet(
            initialChildSize: 0.65,
            minChildSize: 0.65,
            maxChildSize: 1.0,
            snap: true,
            builder: (context, scrollController) {
              return Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 8,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ListView.builder(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 32,
                  ),
                  itemCount: controller.nutritionItems.length,
                  itemBuilder: (context, index) {
                    final item = controller.nutritionItems[index];

                    return Obx(() {
                      final isExpanded =
                          controller.expandedIndex.value == index;
                      return ContentList(
                        item: item,
                        index: index,
                        isExpanded: isExpanded,
                        controller: controller,
                      );
                    });
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
