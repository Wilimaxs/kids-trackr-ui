import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/feature/attendance/attendance_controller.dart';
import 'package:kids_trakr/feature/attendance/widgets/header_attendance.dart';
import 'package:kids_trakr/feature/attendance/widgets/progress_bar.dart';
import 'package:kids_trakr/utils/widgets/primary_appbar.dart';

class AttendancePage extends GetView<AttendanceController> {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'Schedule',
        showBackButton: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const HeaderAttendance(),
          ProgressBar(items: controller.dataProgress),
          const SizedBox(height: 16),
          Expanded(
            child: Container(
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
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                itemCount: controller.dataProgress.length,
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.black12,
                  height: 32,
                  thickness: 1,
                ),
                itemBuilder: (context, index) {
                  final item = controller.dataProgress[index];
                  final totalDays = item.days;

                  return Row(
                    children: [
                      Container(
                        width: 4,
                        height: 24,
                        decoration: BoxDecoration(
                          color: item.color,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          item.label,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: item.color.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "$totalDays Days",
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(
                                color: item.color,
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
