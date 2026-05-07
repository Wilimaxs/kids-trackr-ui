import 'package:flutter/material.dart';

class HomeItem {
  final String title;
  final String desc;
  final String image;
  final Color color;
  final VoidCallback onTap;


  HomeItem({
    required this.title,
    required this.desc,
    required this.image,
    required this.color,
    required this.onTap,
  });
}