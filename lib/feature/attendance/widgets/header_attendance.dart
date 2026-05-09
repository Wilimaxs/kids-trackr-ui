import 'package:flutter/material.dart';
import 'package:kids_trakr/gen/assets.gen.dart';

class HeaderAttendance extends StatelessWidget {
  const HeaderAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.images.attendancePage.path, width: 120, height: 120),
          Text(
            "attendance",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              shadows: const [
                Shadow(
                  color: Colors.black45,
                  blurRadius: 5.0,
                  offset: Offset(0, 1),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Updated daily",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
