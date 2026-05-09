import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/feature/schedule/schedule_controller.dart';

class ChipMenu extends StatelessWidget {
  final ScheduleController controller;

  const ChipMenu({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      child: Obx(
        () => Row(
          children: List.generate(controller.tabs.length, (index) {
            final isSelected = controller.selectedIndex.value == index;
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ChoiceChip(
                label: Text(controller.tabs[index]),
                selected: isSelected,
                onSelected: (_) {
                  controller.selectedIndex.value = index;
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
