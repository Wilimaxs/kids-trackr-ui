import 'package:flutter/material.dart';

class TabMenu extends StatelessWidget {
  final String title;
  final String desc;
  final String image;
  final Color color;
  final VoidCallback onTap;

  const TabMenu({
    super.key,
    required this.title,
    required this.desc,
    required this.image,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 6),
                Text(
                  desc,
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Positioned(
            right: -10,
            bottom: -15,
            child: Image.asset(image, width: 85, height: 85, fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}
