import 'package:flutter/material.dart';
import 'package:kids_trakr/feature/nutrition/nutrition_controller.dart';
import 'package:kids_trakr/model/nutrition_item.dart';
import 'package:kids_trakr/utils/theme/app_color.dart';

class ContentList extends StatelessWidget {
  final NutritionController controller;
  final NutritionItem item;
  final int index;
  final bool isExpanded;

  const ContentList({
    super.key,
    required this.item,
    required this.index,
    required this.isExpanded,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.toggleExpand(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.primaryContainerLight,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.day,
                        style: Theme.of(context).textTheme.bodyMedium
                      ),
                      Text(
                        item.title,
                        style:Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w800,
                        )
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      item.date,
                      style: Theme.of(context).textTheme.bodySmall
                    ),
                    const SizedBox(height: 8),
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      size: 32,
                      color: const Color(0xFF1E293B),
                    ),
                  ],
                ),
              ],
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: isExpanded
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        Center(
                          child: ClipOval(
                            child: Image.asset(
                              item.image,
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Center(
                          child: Text(
                            "Nutrition: ${item.content}",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item.desc,
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w400
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
