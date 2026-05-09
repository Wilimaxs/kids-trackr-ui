import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/feature/schedule/schedule_controller.dart';
import 'package:kids_trakr/utils/theme/app_color.dart';

class TileMenu extends StatelessWidget {
  final ScrollController scrollController;
  final ScheduleController controller;

  const TileMenu({
    super.key,
    required this.scrollController,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Obx(() {
        final isExpanded = controller.sheetSize.value > 0.9;
        final schedules = controller.filteredSchedules;

        return CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                height: isExpanded ? kToolbarHeight : 0,
                child: AnimatedOpacity(
                  opacity: isExpanded ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 250),
                  child: AppBar(
                    backgroundColor: Colors.white,
                    surfaceTintColor: Colors.transparent,
                    centerTitle: true,
                    title: Text(
                      controller.tabs[controller.selectedIndex.value],
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.chevron_left),
                      onPressed: () {
                        if (controller.selectedIndex.value > 0) {
                          controller.selectedIndex.value--;
                        }
                      },
                    ),
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.chevron_right),
                        onPressed: () {
                          if (controller.selectedIndex.value <
                              controller.tabs.length - 1) {
                            controller.selectedIndex.value++;
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 16, bottom: 24),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final item = schedules[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.primaryContainerLight,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        border: Border.all(
                          color: AppColors.outlineLight.withValues(alpha: 0.5),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 4,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      item.type,
                                      style: Theme.of(context).textTheme.labelSmall
                                          ?.copyWith(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.5,
                                            textBaseline: TextBaseline.alphabetic,
                                          ),
                                    ),
                                    Text(
                                      item.time,
                                      style: Theme.of(context).textTheme.bodySmall
                                          ?.copyWith(
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  item.subject,
                                  style: Theme.of(context).textTheme.titleMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: schedules.length,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
