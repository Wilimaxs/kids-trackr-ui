import 'package:flutter/material.dart';

class NewsItem {
  final String title;
  final String desc;
  final String image;
  final VoidCallback onTap;

  NewsItem({
    required this.title,
    required this.desc,
    required this.image,
    required this.onTap,
  });
}
