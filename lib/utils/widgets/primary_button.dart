import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool enabled;
  final double width;
  final double height;
  final bool reverse;
  final Widget? icon;
  final Color? textColor;
  final double? radius;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.enabled = true,
    this.width = double.infinity,
    this.height = 46.0,
    this.reverse = false,
    this.icon,
    this.textColor,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: (enabled && !isLoading) ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: reverse ? colorScheme.surface : colorScheme.primary,
          foregroundColor: reverse
              ? (textColor ?? colorScheme.onSurface)
              : (textColor ?? colorScheme.onPrimary),
          disabledBackgroundColor: colorScheme.outline.withValues(alpha: 0.35),
          disabledForegroundColor: colorScheme.onSurfaceVariant,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 12.0),
          ),
          side: BorderSide(
            color: reverse ? colorScheme.outline : colorScheme.primaryContainer,
            width: 1.5,
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: reverse
                ? (textColor ?? colorScheme.onSurface)
                : (textColor ?? colorScheme.onPrimary),
          ),
          splashFactory: NoSplash.splashFactory,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
        ),
        child: isLoading
            ? SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: reverse ? colorScheme.primary : colorScheme.onPrimary,
          ),
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              icon!,
              const SizedBox(width: 8),
            ],
            Text(text),
          ],
        ),
      ),
    );
  }
}