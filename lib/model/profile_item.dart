import 'package:flutter/material.dart';

class ProfileItem {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  ProfileItem({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });
}