import 'package:flutter/material.dart';

class StateHandle extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final bool isEmpty;
  final bool isError;
  final String? emptyText;
  final Widget? emptyIcon;
  final String? errorText;
  final Widget? errorIcon;
  final Future<void> Function()? onRefresh;

  //opsional for shimmer or custom loading widget
  final Widget? loadingWidget;

  const StateHandle({
    super.key,
    required this.child,
    this.onRefresh,
    this.isLoading = false,
    this.isEmpty = false,
    this.isError = false,
    this.emptyText,
    this.emptyIcon,
    this.errorText,
    this.errorIcon,
    this.loadingWidget,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    if (loadingWidget != null && isLoading) {
      return loadingWidget!;
    }

    return Stack(
      children: [
        _buildMainContent(context),
        if (isLoading && loadingWidget == null) ...[
          ModalBarrier(
            dismissible: false,
            color: colorScheme.surface.withValues(alpha: 0.08),
          ),
          Container(
            color: colorScheme.surface.withValues(alpha: 0.18),
            child: Center(
              child: CircularProgressIndicator(color: colorScheme.primary),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildMainContent(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget content;

    if (isError) {
      content = _buildStateInfo(
        context,
        icon:
            errorIcon ??
            Icon(Icons.error_outline, size: 48, color: colorScheme.error),
        message: errorText ?? 'Something went wrong',
      );
    } else if (isEmpty) {
      content = _buildStateInfo(
        context,
        icon:
            emptyIcon ??
            Icon(Icons.inbox_outlined, size: 48, color: colorScheme.outline),
        message: emptyText ?? 'No data found',
      );
    } else {
      content = child;
    }

    if (onRefresh == null) return content;

    return RefreshIndicator(
      onRefresh: onRefresh!,
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [SliverFillRemaining(hasScrollBody: true, child: content)],
      ),
    );
  }

  Widget _buildStateInfo(
    BuildContext context, {
    required Widget icon,
    required String message,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: colorScheme.onSurfaceVariant,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
