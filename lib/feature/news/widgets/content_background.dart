import 'package:flutter/material.dart';

class ContentBackground extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;

  const ContentBackground({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: padding,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: [
          BoxShadow(color: Colors.black45, blurRadius: 8, offset: Offset(0, 5)),
        ],
      ),
      child: child,
    );
  }
}
