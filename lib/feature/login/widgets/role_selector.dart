import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/feature/login/login_controller.dart';

class RoleSelector extends GetView<LoginController> {
  const RoleSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: RoleChip(
              label: 'Parent',
              isSelected: controller.selectedRole.value == 'Parent',
              onTap: () => controller.selectRole('Parent'),
              colorScheme: colorScheme,
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: RoleChip(
              label: 'Teacher',
              isSelected: controller.selectedRole.value == 'Teacher',
              onTap: () => controller.selectRole('Teacher'),
              colorScheme: colorScheme,
            ),
          ),
        ],
      ),
    );
  }
}

class RoleChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final ColorScheme colorScheme;

  const RoleChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: isSelected ? colorScheme.primary : colorScheme.secondary,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: colorScheme.primary.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: isSelected
                    ? colorScheme.onPrimary
                    : colorScheme.onSecondary,
                fontWeight: FontWeight.w600,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

