import 'package:flutter/material.dart';
import 'package:kids_trakr/model/attendance_progress.dart';

class ProgressBar extends StatelessWidget {
  final List<AttendanceProgress> items;

  const ProgressBar({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final totalDays = items.fold<int>(0, (sum, item) => sum + item.days);

    return Column(
      children: items.map((item) {
        final progressValue = totalDays == 0 ? 0.0 : (item.days / totalDays);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: item.color.withValues(alpha: 0.6),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: progressValue,
                minHeight: 18,
                color: item.color,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
