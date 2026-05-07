import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/utils/theme/app_color.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final IconButton? leading;
  final PreferredSizeWidget? bottom;
  final Color? titleColor;
  final Color? iconColor;
  final double elevation;
  final bool centerTitle;
  final bool showBackButton;
  final Color? backgroundColor;
  final VoidCallback? onBackPressed;

  const PrimaryAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.bottom,
    this.titleColor,
    this.iconColor,
    this.elevation = 1,
    this.centerTitle = true,
    this.showBackButton = false,
    this.backgroundColor,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final backgroundColor =
        this.backgroundColor ??
        (isDark ? AppColors.surfaceDark : AppColors.surfaceLight);
    final effectiveTitleColor =
        titleColor ?? (isDark ? AppColors.text10 : AppColors.text90);
    final effectiveIconColor =
        iconColor ?? (isDark ? AppColors.text10 : AppColors.primaryLight);

    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w600,
          color: effectiveTitleColor,
        ),
      ),
      actions: actions,
      scrolledUnderElevation: 0,
      leading: showBackButton
          ? leading ??
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                    color: effectiveIconColor,
                  ),
                  onPressed: onBackPressed ?? () => Get.back(),
                )
          : null,
      bottom: bottom,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shadowColor: isDark
          ? AppColors.black.withValues(alpha: 0.35)
          : AppColors.text20,
      centerTitle: centerTitle,
      iconTheme: IconThemeData(color: effectiveIconColor),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));
}
